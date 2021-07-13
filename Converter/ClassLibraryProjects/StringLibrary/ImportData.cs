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

                    //open connection
                    conn.Open();

                    //execute the SQLCommand
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
                        //Console.WriteLine("No data found.");
                    }

                    dr.Close();
                }
            }
            catch (Exception ex)
            {
                //display error message
                Console.WriteLine("Exception: " + ex.Message);
            }

            return users;
        }
    }
}
    

