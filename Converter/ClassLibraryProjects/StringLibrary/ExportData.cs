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
    }
}