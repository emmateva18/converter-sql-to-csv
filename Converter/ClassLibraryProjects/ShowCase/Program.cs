using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using ConverterLibrary;

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

            // Load data from SQL db
            DataTable dtUsers = ImportData.loadUsers();

            // Export the data in .csv file
            ExportData.ToCSVWithFile(dtUsers, path, delimiter);

        }
    }
}
