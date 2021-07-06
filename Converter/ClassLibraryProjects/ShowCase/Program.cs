using System;
using System.Data;

namespace ConverterLibrary
{
    class Program
    {
        static void Main(string[] args)
        {
            const string productsFilePath = "C:\\converter-sql-to-csv";

            DataTable dtProducts = ImportData.GetProducts();

            ExportData.ToCSVWithFile(dtProducts, productsFilePath);
        }
    }
}
