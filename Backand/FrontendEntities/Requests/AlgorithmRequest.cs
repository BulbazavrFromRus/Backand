using System.Text.Json.Serialization;

namespace Backand.FrontendEntities.Requests
{
	public enum BuildType
	{
		NoMatter = 0,
		Placer,
		Block
	}

	public enum FilterMethod
	{
		Time = 0,
		Money,
		Balanced
	}

	public class Filter
	{
		[JsonPropertyName("filterMethod")]
		public FilterMethod FilterMethod { get; init; }
		[JsonPropertyName("buildType")]
		public BuildType BuildType { get; init; }
		[JsonPropertyName("transportTypeIds")]
		public int[] TransportTypeIds { get; init; }
		[JsonPropertyName("certainLogists")]
		public CertainLogists CertainLogists { get; init; }
		[JsonPropertyName("certainManufacturers")]
		public CertainManufacturers CertainManufacturers { get; init; }
	}

	public class CertainLogists
	{
		[JsonPropertyName("ids")]
		public List<int> Ids { get; init; }
	}

	public class CertainManufacturers
	{
		[JsonPropertyName("ids")]
		public List<int> Ids { get; init; }
	}

	public class ConstructionOption
	{
		[JsonPropertyName("constructionId")]
		public int ConstructionId { get; init; }
		[JsonPropertyName("filter")]
		public Filter Filter { get; init; }
	}

	public class AlgorithmRequest
	{
		public List<ConstructionOption> ConstructionOptions { get; init; }
	}
}
