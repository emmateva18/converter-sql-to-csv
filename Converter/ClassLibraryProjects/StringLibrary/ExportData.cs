using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Text;
using System.Linq;
// using Newtonsoft.Json;

namespace ConverterLibrary
{
    public class ExportData
    {
        public static void ToCSVWithFile(DataTable dtDataTable)
        {
            StringBuilder sb = new StringBuilder();

            IEnumerable<string> columnNames
                    = dtDataTable.Columns.Cast<DataColumn>().
                        Select(column => column.ColumnName);
            sb.AppendLine(string.Join(",", columnNames));

            foreach (DataRow row in dtDataTable.Rows)
            {
                IEnumerable<string> fields
                    = row.ItemArray.Select(
                    field => field.ToString());
                sb.AppendLine(string.Join(",", fields));
            }

            // string docPath = System.IO.Path.GetDirectoryName("AllUsers.txt");

            // For redirecting file on Desktop
            string docPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop );
            File.WriteAllText(Path.Combine(docPath, "Users.csv"), sb.ToString());
        }
    }
}