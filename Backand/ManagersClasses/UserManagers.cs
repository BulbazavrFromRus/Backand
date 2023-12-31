﻿using Backand.DbEntities;
using Backand.FrontendEntities;
using System.Security.Cryptography;
using System.Text;

namespace Backand.ManagersClasses
{
    public static class UserManagers
    {

        public static async Task GetAllUser(HttpContext context)
        {

            List<User> list;
            using (ApplicationContext db = new ApplicationContext())
                list = db.User.ToList();
            await context.Response.WriteAsJsonAsync(list);
        }

        //Get field by id 
        public static async Task GetUserById(int id, HttpContext context)
        {
            List<User> list;
            using (ApplicationContext db = new ApplicationContext())
                list = db.User.ToList();
            User item = list.FirstOrDefault((f) => f.UserId == id);
            if (item != null)
            {
                await context.Response.WriteAsJsonAsync(item);
            }
            else
            {
                await context.Response.WriteAsJsonAsync("Item is null");
            }
        }
        static string GetHashedPassword(string password)
        {
            var password_bytes = Encoding.UTF8.GetBytes(password);
            var hashed = SHA256.HashData(password_bytes);
            return Convert.ToBase64String(hashed);
        }
        //Create new field 
        public static async Task CreateUser(HttpContext context)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                User item = await context.Request.ReadFromJsonAsync<User>();

                if (item != null)
                {
                    item.Password = GetHashedPassword(item.Password);
                    db.User.Add(item);
                    await db.SaveChangesAsync(); // Save changes to the database
                    await context.Response.WriteAsJsonAsync(item);
                }
                else
                {
                    await context.Response.WriteAsJsonAsync("Item hasn't enough parameters");
                }
            }
        }

        //Update fields
        public static async Task UpdateUser(HttpContext context,ApplicationContext db,int id)
        {
            User userData = await context.Request.ReadFromJsonAsync<User>();
            if (userData != null)
            {
                var item = db.User.FirstOrDefault(c => c.UserId == id);
                if (item != null)
                {
                    if (userData.UserTypeId!=0)
                        item.UserTypeId = userData.UserTypeId;
                    if (userData.BirthDate != DateTime.MinValue)
                        item.BirthDate = userData.BirthDate;
                        
                    if (userData.PhoneNumber != null)
                        item.PhoneNumber = userData.PhoneNumber;
                    if (userData.PhotoPath != null)
                        item.PhotoPath = userData.PhotoPath;

                    if (userData.FirstName != null)
                        item.FirstName = userData.FirstName;
                    if (userData.Surname != null)
                        item.Surname = userData.Surname;
                    if (userData.Patronymic != null)
                        item.Patronymic = userData.Patronymic;

                    if (userData.Login != null)
                        item.Login = userData.Login;
                    if (userData.Password != null)
                        item.Password = GetHashedPassword(userData.Password);



                    await db.SaveChangesAsync();
                    await context.Response.WriteAsJsonAsync(item);
                }
                
            }
            else
            {
                await context.Response.WriteAsJsonAsync("Null");
            }
        }
        //Delete field 
        public static async Task<IResult> DeleteUser(ApplicationContext dbContext, int id)
        {
            return await Task.Run(() =>
            {
                BaseResponse response;
                var user = dbContext.User.FirstOrDefault(u=>u.UserId==id);
                if (user != null)
                {
                    try
                    {
                        var res=dbContext.User.Remove(user);
                        dbContext.SaveChanges();
                        response = new(false, $"User with id '{id}' has removed!");
                    }
                    catch(Exception exc)
                    {
                        response = new(true,exc.ToString());
                    }
                }
                else
                    response = new(true,$"User with id '{id}' doesn't exist");
                return Results.Json(response);
            });
        }

    }
}
