using Backand.AlgorithmEntities;
using Backand.DbEntities;
using Backand.FrontendEntities.Requests;
using Microsoft.EntityFrameworkCore;
using Backand.Services;
using Backand.ManagersClasses.AlgorithmDataManager.TrackGetters;
using Backand.FrontendEntities.AlgorithmResponse;
using Backand.DbEntities.ConstructionSpace;
using static Backand.ManagersClasses.AlgorithmDataManager.InnerDataRequests;
using static Backand.ManagersClasses.AlgorithmDataManager.DataFiltering;
using static OpenQA.Selenium.VirtualAuth.VirtualAuthenticatorOptions;

namespace Backand.ManagersClasses.AlgorithmDataManager
{
	public class AlgorithmDataManagers : DbRequests
	{
		private static List<DeliveryVariant> DeliveryVariants { get; set; } = new();

		static async Task<AlgorithmData> LoadData(ApplicationContext dbContext, DistanceService distanceService)
		{
			List<Construction> constructions = await dbContext.Construction.Include(c => c.Object).ToListAsync();
			List<Storage> storages = await dbContext.Storage.ToListAsync();
			List<TransportFleet> transportFleets = await dbContext.TransportFleet.ToListAsync();

			List<TransportOnFleetWithRegions> transportsOnFleetsAll = await GetTransportsOnFleetsAsync(dbContext);

			List<MaterialSet> materialSets = await dbContext.MaterialSet.ToListAsync();
			List<StorageMaterial> storagesMaterialsAll = await GetStoragesMaterialsAsync(dbContext);

			TransportFleetToObjectTracker transportFleetToObject = new(dbContext,distanceService);
			StorageToObjectsTracker storageToObjects = new(dbContext,distanceService);
			StorageToTransportFleetTracker storageToFleet = new(dbContext,distanceService);

			List<StorageToObjectsDistance> storageToObjectsDistances = await storageToObjects.GetTrackToEndpoints();
			List<StorageToTransportFleetDistance> storageToTransportFleetDistances = await storageToFleet.GetTrackToEndpoints();
			List<TransportFleetToObjectsDistance> transportFleetToObjectsDistance = await transportFleetToObject.GetTrackToEndpoints();
			return new AlgorithmData(constructions, storages, transportFleets, transportsOnFleetsAll, materialSets, storagesMaterialsAll, storageToObjectsDistances, storageToTransportFleetDistances, transportFleetToObjectsDistance);
		}

		static void FillDeliveryVariants(AlgorithmData data, ConstructionOption constructionOption, Objects objectsToDeliver)
		{
			DeliveryVariants.Clear();

			List<TransportOnFleetWithRegions> transportsOnFleets = FilterFleetsByLogisticCompanies(data.transportsOnFleetsAll, constructionOption);
			FilterMethod filterMethod = constructionOption.Filter.FilterMethod;
			var transportType = constructionOption.Filter.TransportTypeIds.Cast<TransportTypeValue>();

			if (transportType.Contains(TransportTypeValue.Ground))
				AddDeliveryVariantsForGroundTransport(data, objectsToDeliver, transportsOnFleets, filterMethod);
			if (transportType.Contains(TransportTypeValue.Air))
				AddDeliveryVariantsForAirTransport(data, objectsToDeliver, transportsOnFleets, filterMethod);

			SortCostAndTimeListByFilterMethod(DeliveryVariants, filterMethod);
		}

		static void AddDeliveryVariantsForGroundTransport(AlgorithmData data, Objects objectsToDeliver, List<TransportOnFleetWithRegions> transportsOnFleets, FilterMethod filterMethod)
		{
			Dictionary<int, decimal?> storageToCertainObjectsDistances = GetStorageToCertainObjectsDistances(data.storageToObjectsDistances, objectsToDeliver);

			foreach (var transportFleet in data.transportFleets)
			{
				int transportFleetId = transportFleet.TransportFleetId;
				var transportsOnFleet = FilterTransportFromTransportFleetByType(transportsOnFleets, transportFleetId, TransportTypeValue.Ground);
				SortTransportsOnFleetByFilter(transportsOnFleet, filterMethod);
				var transports = GetFirstTransportFromFleets(transportsOnFleets);

				foreach (var storage in data.storages)
				{
					int storageId = storage.StorageId;

					foreach (var transport in transports)
						if (transport.RegionIds.Contains((int)storage.RegionId!) && transport.RegionIds.Contains(objectsToDeliver!.RegionId))
						{
							decimal distance = (decimal)(data.storageToTransportFleetDistances.FirstOrDefault(d => d.TransportFleetId == transportFleetId && d.StorageId == storageId)!.Distance + storageToCertainObjectsDistances[storageId])!;
							decimal cost = (decimal)transport.TransportOnFleet!.CoefficientValue * distance;
							decimal deliveryTime = distance / (decimal)transport.TransportOnFleet!.AverageSpeed;

							DeliveryVariants.Add(new DeliveryVariant
							{
								StorageId = storageId,
								Storage = storage,
								DeliveryRouteParams = new List<DeliveryRouteParams>(){ new DeliveryRouteParams
								{
									TransportFleetId = transportFleetId,
									TransportOnFleet = transport.TransportOnFleet,
									Cost = cost,
									DeliveryTime = deliveryTime,
									Distance = distance
								}},
								Cost = cost,
								DeliveryTime = deliveryTime
							});
							break;
						}
				}
			}
		}

		static void SortTransportsOnFleetByFilter(List<TransportOnFleetWithRegions> transportsOnFleet, FilterMethod filterMethod)
		{
			switch(filterMethod)
			{
				case FilterMethod.Time:
					transportsOnFleet.Sort((t2, t1) => t1.TransportOnFleet.AverageSpeed.CompareTo(t2.TransportOnFleet.AverageSpeed));
					break;
				case FilterMethod.Money:
					transportsOnFleet.Sort((t1, t2) => t1.TransportOnFleet.CoefficientValue.CompareTo(t2.TransportOnFleet.CoefficientValue));
					break;
				case FilterMethod.Balanced:
					transportsOnFleet
						.Sort((t1, t2) => (t1.TransportOnFleet.CoefficientValue / t1.TransportOnFleet.AverageSpeed)
							.CompareTo(t2.TransportOnFleet.CoefficientValue / t2.TransportOnFleet.AverageSpeed));
					break;
			}
		}

		static void AddDeliveryVariantsForAirTransport(AlgorithmData data, Objects objectsToDeliver, List<TransportOnFleetWithRegions> transportsOnFleets, FilterMethod filterMethod)
		{
			List<TransportOnFleetWithRegions> airTransport = GetTransportToDeliverFromFleet(transportsOnFleets, objectsToDeliver, TransportTypeValue.Air);
			SortTransportsOnFleetByFilter(airTransport, filterMethod);
			var airTransportFiltered = GetFirstTransportFromFleets(airTransport);

			int[] regionIds = airTransportFiltered.Select(t => t.TransportOnFleet.TransportFleet.RegionId).ToArray();
			var groundTransport = GetGroundTransportToDeliverInAnyRegion(airTransportFiltered, regionIds);
			SortTransportsOnFleetByFilter(groundTransport, filterMethod);
			var groundTransportFiltered = GetFirstTransportFromFleets(groundTransport);

			GetGroundAirTransportVariations(data, airTransportFiltered, groundTransportFiltered, objectsToDeliver.ObjectsId);
		}

		static void GetGroundAirTransportVariations(AlgorithmData data, List<TransportOnFleetWithRegions> airTransports, List<TransportOnFleetWithRegions> groundTransports, int objectsToDeliverId)
		{

			foreach (var storage in data.storages)
				foreach (var airTransport in airTransports)
				{
					int airTransportFleetId = airTransport.TransportOnFleet.TransportFleet.TransportFleetId;
					decimal? distanceToAirTransport = GetStorageToTransportFleetDistance(data.storageToTransportFleetDistances, storage.StorageId, airTransportFleetId);

					if (distanceToAirTransport is null) continue;

					var airRegionId = airTransport.TransportOnFleet.TransportFleet.RegionId;
					var groundTransport = GetFirstTransportToDeliverInRegion(groundTransports, airRegionId);
					if (groundTransport is null) continue;

					int groundTransportFleetId = groundTransport.TransportOnFleet.TransportFleet.TransportFleetId;

					decimal? groundDistance = GetStorageToTransportFleetDistance(data.storageToTransportFleetDistances, storage.StorageId, groundTransportFleetId) + distanceToAirTransport;
					if (groundDistance is null) continue;
					decimal groundCost = (decimal)groundTransport.TransportOnFleet!.CoefficientValue * (decimal)groundDistance;
					decimal groundDeliveryTime = (decimal)groundDistance / (decimal)groundTransport.TransportOnFleet.AverageSpeed;

					decimal? airDistance = GetTransportFleetToObjectsDistance(data.transportFleetToObjectsDistances, airTransportFleetId, objectsToDeliverId);
					if (airDistance is null) continue;
					decimal airCost = (decimal)airTransport.TransportOnFleet!.CoefficientValue * (decimal)airDistance;
					decimal airDeliveryTime = (decimal)airDistance / (decimal)airTransport.TransportOnFleet.AverageSpeed;

					DeliveryVariants.Add(new DeliveryVariant()
					{
						StorageId = storage.StorageId,
						Storage = storage,
						DeliveryRouteParams = new List<DeliveryRouteParams>()
						{
							new DeliveryRouteParams()
							{
								TransportFleetId = groundTransportFleetId,
								TransportOnFleet = groundTransport.TransportOnFleet,
								Cost = groundCost,
								DeliveryTime = groundDeliveryTime,
								Distance = (decimal)groundDistance
							},
							new DeliveryRouteParams()
							{
								TransportFleetId = airTransportFleetId,
								TransportOnFleet = airTransport.TransportOnFleet,
								Cost = airCost,
								DeliveryTime = airDeliveryTime,
								Distance = (decimal)airDistance
							}
						},
						Cost = groundCost + airCost,
						DeliveryTime = groundDeliveryTime + airDeliveryTime
					});
				}
		}

		static void SortCostAndTimeListByFilterMethod<T>(List<T> deliveryCosts, FilterMethod filterMethod) where T : ICostAndTime
		{
			switch (filterMethod)
			{
				case FilterMethod.Money:
					deliveryCosts.Sort((e1, e2) => e1.Cost.CompareTo(e2.Cost));
					break;
				case FilterMethod.Time:
					deliveryCosts.Sort((e1, e2) => e1.DeliveryTime.CompareTo(e2.DeliveryTime));
					break;
				case FilterMethod.Balanced:
					deliveryCosts.Sort((e1, e2) => (e1.Cost * e1.DeliveryTime).CompareTo(e1.Cost * e1.DeliveryTime));
					break;
				default:
					throw new NotImplementedException("Обработка такого значения фильтрации не была предусмотрена");
			};
		}

		internal static async Task CalculateOrderCostTime(HttpContext context, ApplicationContext dbContext, DistanceService distanceService)
		{
			AlgorithmRequest? algorithmRequest = await context.Request.ReadFromJsonAsync<AlgorithmRequest>() ?? throw new ArgumentNullException("Пустое тело запроса!");
			List<ConstructionOption> constructionOptions = algorithmRequest.ConstructionOptions;

			AlgorithmData dataTuple = await LoadData(dbContext, distanceService);
			var (constructions, storages, transportFleets, transportsOnFleetsAll, materialSets, storagesMaterialsAll, storageToObjectsDistances, storageToTransportFleetDistance, transportFleetToObjectsDistance) = dataTuple;

			AlgorithmResponse response = new();

			foreach (var constructionOption in constructionOptions)
			{
				(Objects? objectsToDeliver, int constructionTypeId) = constructions
					.Where(c => c.ConstructionId == constructionOption.ConstructionId)
					.Select(c => (c.Object, c.ConstructionTypeId))
					.FirstOrDefault();

				FillDeliveryVariants(dataTuple, constructionOption, objectsToDeliver);

				List<StorageMaterial> storagesMaterials = FilterMaterialsByManufacturers(storagesMaterialsAll, constructionOption);
				var constructionMaterialSets = GetMaterialsSetsWithConstructionTypes(materialSets, dbContext, constructionTypeId);
				BuildType allowedBuildType = constructionOption.Filter.BuildType;

				foreach (var constructionMaterialSet in constructionMaterialSets)
				{
					var constructionUnits = constructionMaterialSet.Value;

					//пропускаем тип постройки, который отключен фильтром
					if (allowedBuildType != BuildType.NoMatter && (BuildType)constructionUnits[0].ConstructionUnitTypeId != allowedBuildType)
						continue;

					int[] uniqueConstructionUnitIds = constructionUnits.Select(cUnit => cUnit.ConstructionUnitId).ToArray();
					var constructionUnitsFromStorage = storagesMaterials.Where(sm => uniqueConstructionUnitIds.Contains(sm.ConstructionUnitId)).ToList();

					int[] uniqueStorageIds = constructionUnitsFromStorage.Select(cUnit => cUnit.StorageId).Distinct().ToArray();
					MaterialParams?[,] storageMaterialMatrix = new MaterialParams?[uniqueStorageIds.Length, uniqueConstructionUnitIds.Length];
					MaterialParams? materialVariant = null;

					for (int storageId = 0; storageId < uniqueStorageIds.Length; storageId++)
						for (int materialId = 0; materialId < uniqueConstructionUnitIds.Length; materialId++)
						{
							var constructionUnitFromStorage = constructionUnitsFromStorage
								.FirstOrDefault(cUnit =>
								cUnit!.ConstructionUnitId == uniqueConstructionUnitIds[materialId]
								&& cUnit.StorageId == uniqueStorageIds[storageId], null);

							if (constructionUnitFromStorage is not null)
								materialVariant = new MaterialParams
								{
									PricePerUnit = constructionUnitFromStorage.PricePerUnit,
									Amount = (decimal)constructionUnits[materialId].Amount,
								};
							storageMaterialMatrix[storageId, materialId] = materialVariant;
						}

					var storagesManufacturer = GetManufacturersByStorageIds(uniqueStorageIds, dbContext, dataTuple);

					var orderVariants = CalculateOrderVariants(storageMaterialMatrix, uniqueStorageIds, storagesManufacturer);
					SortCostAndTimeListByFilterMethod(orderVariants, constructionOption.Filter.FilterMethod);

					response.Orders.Add(GetOrderVariantsWithInfo(orderVariants, dataTuple, constructionUnits, storagesManufacturer));
				}
			}

			await context.Response.WriteAsJsonAsync(response);
		}

		static List<ShortOrderVariant> CalculateOrderVariants(MaterialParams?[,] storageMaterialMatrix, int[] storageIds, Dictionary<int, Manufacturer> storagesManufacturer)
		{
			///алгоритм для перебора, к сожалению, всех вариантов
			int storagesCount = storageMaterialMatrix.GetLength(0);
			int materialsCount = storageMaterialMatrix.GetLength(1);

			int[] storageIndices = new int[materialsCount];
			List<ShortOrderVariant> orderVariants = new();

			while (storageIndices.Last() < storagesCount)
			{
				bool variantIsValid = true;
				ShortOrderVariant orderVariant = new ShortOrderVariant(storageIndices.ToArray(), new DeliveryVariant[materialsCount], new decimal[materialsCount], new decimal[materialsCount], 0, 0);
				List<int> storagesWithCalculatedDeliveries = new();

				for (int materialIndex = 0; materialIndex < storageIndices.Length; materialIndex++)
				{
					MaterialParams? materialVariant = storageMaterialMatrix[storageIndices[materialIndex], materialIndex];

					if (materialVariant is null)
					{
						variantIsValid = false;
						break;
					}

					FillOrderVariantWithMaterial(orderVariant, materialIndex, materialVariant);

					int storageId = storageIds[storageIndices[materialIndex]];
					orderVariant.DeliveryVariants[materialIndex] = DeliveryVariants.FirstOrDefault(c => c.StorageId == storageId && ValidateLogisticCompany(storagesManufacturer, c));

					if (orderVariant.DeliveryVariants[materialIndex] is null)
					{
						variantIsValid = false;
						break;
					}

					if (orderVariant.DeliveryVariants[materialIndex].DeliveryTime > orderVariant.DeliveryTime)
						orderVariant.DeliveryTime = orderVariant.DeliveryVariants[materialIndex].DeliveryTime;

					if (!storagesWithCalculatedDeliveries.Contains(storageIndices[materialIndex]))
					{
						orderVariant.Cost += orderVariant.DeliveryVariants[materialIndex].Cost;
						storagesWithCalculatedDeliveries.Add(storageIndices[materialIndex]);
					}

					orderVariant.StorageIdsForMaterials[materialIndex] = storageIndices[materialIndex];
				}

				if (variantIsValid)
					orderVariants.Add(orderVariant);

				UpdateIndices(storageIndices, materialsCount);
			}
			return orderVariants;
		}

		static bool ValidateLogisticCompany(Dictionary<int, Manufacturer> storagesManufacturer, DeliveryVariant deliveryVariant) =>
			deliveryVariant.DeliveryRouteParams.All(d => d.TransportOnFleet.CompanyTypeId == (int)CompanyType.LogisticCompany || storagesManufacturer[deliveryVariant.StorageId].ManufacturerId == d.TransportOnFleet.CompanyId);

		static void FillOrderVariantWithMaterial(ShortOrderVariant orderVariant, int materialIndex, MaterialParams materialVariant)
		{
			orderVariant.MaterialCosts[materialIndex] = materialVariant.Cost;
			orderVariant.MaterialPricesPerUnit[materialIndex] = materialVariant.PricePerUnit;
			orderVariant.Cost += materialVariant.Cost;
		}

		static void UpdateIndices(int[] storageIndices, int materialsCount)
		{
			storageIndices[0]++;

			for (int materialIndex = 0; storageIndices[materialIndex] == materialsCount && materialIndex < storageIndices.Length - 1; materialIndex++)
			{
				storageIndices[materialIndex] = 0;
				storageIndices[materialIndex + 1]++;
			}
		}
	}
}
