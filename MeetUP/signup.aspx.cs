using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MeetUP
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnect conn = new SqlConnect();
                conn.Connection();
                conn.conn.Open();
                MySqlCommand checkEmail = new MySqlCommand("SELECT email FROM `users` WHERE email='" + txtemail.Text.ToString() + "'", conn.conn);
                MySqlDataReader read = checkEmail.ExecuteReader();
                if (read.HasRows)
                {
                    conn.conn.Close();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Oops', 'Email already exists!...', 'error')", true);
                }
                else
                {
                    conn.conn.Close();
                    conn.conn.Open();
                    string cmdText = "INSERT INTO users(fname, lname, email, password) VALUES (@fname,@lname,@email,@password)";
                    MySqlCommand cmd = new MySqlCommand(cmdText, conn.conn);
                    cmd.Parameters.AddWithValue("@fname", txtfname.Text);
                    cmd.Parameters.AddWithValue("@lname", txtlname.Text);
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@password", txtcPassword.Text);
                    int v = cmd.ExecuteNonQuery();
                    conn.conn.Close();
                    Response.Redirect("login.aspx");                                        
                }
            }
            catch (Exception)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Oops', 'Something went wrong!...', 'error')", true);
            }

        }

    

   
    }
}