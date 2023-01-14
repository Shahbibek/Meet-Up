using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MeetUP
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null && (Session["userId"] != null))
            {
                Response.Redirect("~/home.aspx");
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnect conn = new SqlConnect();
                conn.Connection();
                conn.conn.Open();
                MySqlCommand cmd = new MySqlCommand("Select * from users where email=@email and password=@password", conn.conn);
                cmd.Parameters.AddWithValue("@email", txtemail.Text.ToString());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["email"] = txtemail.Text.ToString();                   
                    Session["userId"] = reader["user_id"];                   
                    reader.Close();
                    conn.conn.Close();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Oops', 'Invalid Credentials!!..', 'error')", true);
                }
            }
            catch (Exception)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Oops', 'Something went wrong!!..', 'error')", true);
            }
        }
    }
}