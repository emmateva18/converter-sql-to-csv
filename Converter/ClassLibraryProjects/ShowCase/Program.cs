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
            // Set path to Documents folder and file name to "export.csv"
            string path = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            path = Path.Combine(path, "export.csv");

            // Set delimiter
            string delimiter = System.Globalization.CultureInfo.CurrentCulture.TextInfo.ListSeparator;

            // List<User> users = ImportData.loadUsers();
            List<Bike> bikes = ImportData.loadBikes();

            // Call function for exporting data
            ExportData.ListToCsv(bikes, path, delimiter);
        }
    }
}