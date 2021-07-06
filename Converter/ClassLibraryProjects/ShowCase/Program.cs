using System;
using System.Data;

namespace ConverterLibrary
{
    class Program
    {
        static void Main(string[] args)
        {

            DataTable dtProducts = ImportData.GetProducts();

            ExportData.ToCSVWithFile(dtProducts);
        }
    }
}
