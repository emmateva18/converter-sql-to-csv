using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Text;
using System.Linq;

namespace ConverterLibrary
{
    public class ExportData
    {

        public static void ListToCsv<T>(IEnumerable<T> list, string path, string separator) where T : class
        {
            var t = typeof(T);
            var props = t.GetProperties();

            StringBuilder sb = new StringBuilder();

            var names = props.Select(prop => prop.Name);
            sb.AppendLine(string.Join(separator, names));

            foreach (var item in list)
            {
                var values = props.Select(prop => { return prop.GetValue(item)?.ToString(); });
                sb.AppendLine(string.Join(separator, values));
            }

            File.WriteAllText(path, sb.ToString());
        }

        /*
        public static void ToCSVWithFile(DataTable dtDataTable, string path, string delimiter = ",")
        {
            StringBuilder sb = new StringBuilder();

            // Adds the column names
            IEnumerable<string> columnNames
                    = dtDataTable.Columns.Cast<DataColumn>().
                        Select(column => column.ColumnName);
            sb.AppendLine(string.Join(delimiter, columnNames));

            // Adds the fields data
            foreach (DataRow row in dtDataTable.Rows)
            {
                IEnumerable<string> fields
                    = row.ItemArray.Select(
                    field => field.ToString());
                sb.AppendLine(string.Join(delimiter, fields));
            }

            // If file exists it overwrites
            File.WriteAllText(path, sb.ToString());
        }
        */
    }
}