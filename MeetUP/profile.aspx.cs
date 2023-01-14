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
                    MySqlCommand cmd = new MySqlCommand("Select display_name, email, phone_no from users where user_id=@userId", conn.conn);
                    cmd.Parameters.AddWithValue("@userId",Session["userId"].ToString());
                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {                       
                        d_name.Text = reader["display_name"].ToString();
                        email_id.Text = reader["email"].ToString();
                        mob_no.Text = reader["phone_no"].ToString();
                        reader.Close();
                        conn.conn.Close();
                    }
                }
                else
                {
                    Console.Write("something went wrong");
                }
            }
        }
    }
}