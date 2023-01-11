using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetUP
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnect conn = new SqlConnect();
            conn.Connection();
            conn.conn.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter("Select * from repeater_data", conn.conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            col_repeater.DataSource = dt;
            col_repeater.DataBind();
        }
    }
}