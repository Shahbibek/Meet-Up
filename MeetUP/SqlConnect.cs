using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace MeetUP
{
    public class SqlConnect
    {
        public MySqlConnection conn;

        public void Connection()
        {
            String MyConString = "SERVER=localhost;DATABASE=appointment;UID=root;PASSWORD=;";
            conn = new MySqlConnection(MyConString);
        }
    }
}