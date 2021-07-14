using Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;

namespace ConverterLibrary
{
    class Program
    {
        static void Main(string[] args)
        {


            // Set delimiter
            string delimiter = System.Globalization.CultureInfo.CurrentCulture.TextInfo.ListSeparator;

            // Set connection
            string connString = @"Server=(localdb)\MSSQLLocalDB; Database = ExampleDatabase; Trusted_Connection = True;";

            List<User> users = ImportData.loadUsers(connString);
            List<Car> cars = ImportData.loadCars(connString);

            // Set path to Documents folder
            string path = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            string fullPath;

            // Call function for exporting data
            fullPath = Path.Combine(path, "exportCars.csv");
            ExportData.ListToCsv(cars, fullPath, delimiter);

            fullPath = Path.Combine(path, "exportUsers.csv");
            ExportData.ListToCsv(users, fullPath, delimiter);
        }
    }
}