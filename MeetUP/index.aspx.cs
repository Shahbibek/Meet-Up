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
            try{
                if (!Page.IsPostBack)
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
                else
                {
                    Console.Write("something went wrong");
                }
            }
            catch (Exception ex)
            {
                Console.Write("Error info:" + ex.Message);
            }
        }

        //protected void btnShow_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("login.aspx");
        //}      

        protected void btn_appoint_Click(object sender, EventArgs e)
        {
            Response.Redirect("no_verification.html");
        }

        protected void booking_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("no_verification.html");
        }
    }
}