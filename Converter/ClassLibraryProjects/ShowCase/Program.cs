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
            // Set path to Documents folder and file name to "export.csv"
            string path = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            path = Path.Combine(path, "export.csv");

            // Set delimiter
            string delimiter = System.Globalization.CultureInfo.CurrentCulture.TextInfo.ListSeparator;

            // Add example data
            List<Users> users = new List<Users>();
            users.Add(new Users() { FirstName = "FN1" });
            users.Add(new Users() { FirstName = "FN2" });

            List<Bike> bikes = new List<Bike>();
            bikes.Add(new Bike() { Name = "Bike1", Model = "Model 1", Year = 2020 });
            bikes.Add(new Bike() { Name = "Bike2", Model = "Model 2", Year = 2021 });
            bikes.Add(new Bike() { Name = "Bike3", Model = "Model 3", Year = 2019 });

            // Call function for exporting data
            ExportData.ListToCsv(bikes,path, delimiter);

            //DataTable dtProducts = ImportData.GetProducts();
            //ExportData.ToCSVWithFile(dtProducts, productsFilePath);
        }
    }
}