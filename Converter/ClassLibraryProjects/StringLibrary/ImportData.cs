using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Data;
using System.Data.SqlClient;

namespace ConverterLibrary
{
    public class ImportData
    {
        // Create table
        public static DataTable getUsers()
        {
            DataTable dtUsers = new DataTable();
            dtUsers.Columns.Add("Id", typeof(int));
            dtUsers.Columns.Add("Username", typeof(string));
            dtUsers.Columns.Add("FirstName", typeof(string));
            dtUsers.Columns.Add("LastName", typeof(string));
            dtUsers.Columns.Add("Email", typeof(string));
            dtUsers.Columns.Add("Address", typeof(string));
            dtUsers.Columns.Add("City", typeof(string));
            dtUsers.Columns.Add("Age", typeof(int));

            return dtUsers;
        }

        // Import data from SQL db
        public static DataTable loadUsers()
        {

            DataTable dtUsers = getUsers();

            string connString = @"Server=(localdb)\MSSQLLocalDB; Database = master; Trusted_Connection = True;";

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {

                    string query = @"
                        SELECT TOP (100) [Id]
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

                    //check if there are records
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            dtUsers.Rows.Add(dr.GetInt32("Id"), dr.GetString("Username"), dr.GetString("FirstName"), dr.GetString("LastName"),
                                dr.GetString("Email"), dr.GetString("Address"), dr.GetString("City"), dr.GetInt32("Age"));
                        }
                    }
                    else
                    {
                        Console.WriteLine("No data found.");
                    }
                    dr.Close();
                }
            }
            catch (Exception ex)
            {
                //display error message
                Console.WriteLine("Exception: " + ex.Message);
            }

            return dtUsers;
        }
    }
}
