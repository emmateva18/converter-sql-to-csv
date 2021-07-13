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
        public static List<User> loadUsers()
        {
            string connString = @"Server=(localdb)\MSSQLLocalDB; Database = master; Trusted_Connection = True;";
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
                          FROM [ExampleDatabase].[dbo].[Users]
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


        public static List<Car> loadCars()
        {
            string connString = @"Server=(localdb)\MSSQLLocalDB; Database = master; Trusted_Connection = True;";
            List<Car> Cars = new List<Car>();

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
                          FROM [ExampleDatabase].[dbo].[Cars]
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
                               Car Car = new Car()
                            {
                                Id = dr.GetInt32("Id"),
                                Model = dr.GetString("Model"),
                                Maker = dr.GetString("Model"),
                                Price = dr.GetInt32("Price"),
                                Year = dr.GetInt32("Type"),
                                Color = dr.GetString("Color")
                            };

                            Cars.Add(Car);
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

            return Cars;
        }
    }
}

