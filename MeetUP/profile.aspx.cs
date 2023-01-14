using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MeetUP
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null && Session["userId"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    SqlConnect conn = new SqlConnect();
                    conn.Connection();
                    conn.conn.Open();
                    MySqlDataAdapter sda = new MySqlDataAdapter("Select * from users", conn.conn);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    col_repeater.DataSource = dt;
                    col_repeater.DataBind();
                }
                else
                {
                    Console.Write("something went wrong");
                }
            }
        }
    }
}