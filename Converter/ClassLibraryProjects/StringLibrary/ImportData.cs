using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.ComponentModel.Design;
using Entities;

namespace ConverterLibrary
{
    public class ImportData
    {

        // Import data from SQL db
        public static List<User> loadUsers(string connString)
        {
            List<User> users = new List<User>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {

                    string query = @"
                        SELECT [Id]
                              ,[Username]
                              ,[FirstName]
                              ,[LastName]
                              ,[Email]
                              ,[Address]
                              ,[City]
                              ,[Age]
                          FROM [dbo].[Users]
                    ";

                    SqlCommand cmd = new SqlCommand(query, conn);

                    // Open connection
                    conn.Open();

                    // Execute the SQLCommand
                    SqlDataReader dr = cmd.ExecuteReader();

                    // Check if there are records
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            User user = new User()
                            {
                                Id = dr.GetInt32("Id"),
                                Username = dr.GetString("Username"),
                                FirstName = dr.GetString("FirstName"),
                                LastName = dr.GetString("LastName"),
                                Email = dr.GetString("Email"),
                                Address = dr.GetString("Address"),
                                City = dr.GetString("City"),
                                Age = dr.GetInt32("Age")
                            };

                            users.Add(user);
                        }
                    }
                    else
                    {
                        // Console.WriteLine("No data found.");
                    }

                    dr.Close();
                }
            }
            catch (Exception ex)
            {
                // Display error message
                Console.WriteLine("Exception: " + ex.Message);
            }

            return users;
        }


        public static List<Car> loadCars(string connString)
        {
            List<Car> cars = new List<Car>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {

                    string query = @"
                        SELECT [Id]
                              ,[Model]
                              ,[Maker]
                              ,[Price]
                              ,[Year]
                              ,[Color]
                          FROM [dbo].[Cars]
                    ";

                    SqlCommand cmd = new SqlCommand(query, conn);

                    // Open connection
                    conn.Open();

                    // Execute the SQLCommand
                    SqlDataReader dr = cmd.ExecuteReader();

                    // Check if there are records
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                               Car car = new Car()
                            {
                                Id = dr.GetInt32("Id"),
                                Model = dr.GetString("Model"),
                                Maker = dr.GetString("Maker"),
                                Price = dr.GetInt32("Price"),
                                Year = dr.GetInt32("Year"),
                                Color = dr.GetString("Color")
                            };

                            cars.Add(car);
                        }
                    }
                    else
                    {
                        // Console.WriteLine("No data found.");
                    }

                    dr.Close();
                }
            }
            catch (Exception ex)
            {
                // Display error message
                Console.WriteLine("Exception: " + ex.Message);
            }

            return cars;
        }
        
        
        public static List<T> LoadTable<T>(string connString)
            where T : class, new()
        {
            List<T> list = new List<T>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    // Open connection
                    conn.Open();

                    string columns = string.Join(',', typeof(T).GetProperties().Select(x => x.Name));
                    string query = @$"SELECT {columns} FROM [dbo].[{nameof(T)}s]";

                    DbCommand cmd = conn.CreateCommand();

                    // Execute the SQLCommand
                    DbDataReader dataReader = cmd.ExecuteReader();

                    // Check if there are records
                    if (dataReader.HasRows)
                    {
                        List<PropertyInfo> properties = typeof(T).GetProperties().ToList();

                        while (dataReader.Read())
                        {
                            T row = new T();

                            foreach (var propertyInfo in properties)
                            {
                                SetValue(row, dataReader, propertyInfo);
                            }

                            list.Add(row);
                        }
                    }

                    dataReader.Close();
                }
            }
            catch (Exception ex)
            {
                // Display error message
                Console.WriteLine("Exception: " + ex.Message);
            }

            return list;
        }
    }
}

