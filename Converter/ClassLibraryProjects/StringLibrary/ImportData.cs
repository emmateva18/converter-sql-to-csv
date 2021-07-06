using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Data;

namespace ConverterLibrary
{
    public class ImportData
    {
        public static DataTable GetProducts()
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

            dtUsers.Rows.Add(1, "wade_cain1973", "Rebecca", "Martin", "wade_cain1973@yahoo.com"
                , "365 Tenmile", "Norfolk", 37 );
            dtUsers.Rows.Add(2, "kasandra_hegma", "Penny", "Sanchez", "kasandra_hegma@gmail.com"
                , "1216 Valley Drive", "Philadelphia", 20);
            dtUsers.Rows.Add(3, "keanu_kund2", "Timothy", "Warden", "keanu_kund2@gmail.com"
                , "384 Coleman Avenue", "San Diego", 22);
            dtUsers.Rows.Add(4, "kevon_adam1", "Kevin", "Morris", "kevon_adam1@hotmail.com"
                , "240 Settlers Lane", "Brooklyn", 28);
            dtUsers.Rows.Add(5, "everette_leffl", "William", "Lewis", "everette_leffl@yahoo.com"
                , "4034 Webster Street", "Robertsville", 39);
            dtUsers.Rows.Add(6, "myrtie1982", "Angela", "Bowen", "myrtie1982@hotmail.com"
                , "2232 Hinkle Lake Road", "Boston", 26);

            return dtUsers;
        }
    }
}
