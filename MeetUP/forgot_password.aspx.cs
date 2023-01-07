using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using MySql.Data.MySqlClient;

namespace MeetUP
{
    public partial class forgot_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("~/forgot_pass_link.aspx");
            }
        }

        protected void reset_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnect conn = new SqlConnect();
                conn.Connection();
                conn.conn.Open();
                MySqlCommand cmd = new MySqlCommand("select email, password, fname from users where email=@email", conn.conn);
                cmd.Parameters.AddWithValue("@email", txtemail.Text.ToString());
                MySqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["email"] = txtemail.Text.ToString();
                    string email = sdr["email"].ToString();
                    string password = sdr["password"].ToString();
                    string fname = sdr["fname"].ToString();

                    MailMessage mm = new MailMessage("visionnewspoint@gmail.com", txtemail.Text);
                    mm.Subject = "Reset Password !!";
                    mm.Body = string.Format("<h3>Hi {2},</h3><br/><h2>There was a request to reset your password!</h2><br/><h2>Please check the password to login:<h2><br/><h3>User Id: {0}</h3><h3><br/>Password: {1}</h3><br/><h2>If you did not this request then please ignore this email🙂.</h2>", email, password, fname);
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential nc = new NetworkCredential();
                    nc.UserName = "visionnewspoint@gmail.com";
                    nc.Password = "gbgntuecqthtuuhc";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = nc;
                    smtp.Port = 587;
                    smtp.Send(mm);                   
                    Response.Redirect("forgot_pass_link.aspx");
                    conn.conn.Close();
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Oops', 'Email is not associated with us!!..', 'error')", true);
                }
            }
            catch (Exception)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Oops', 'Something went wrong!!..', 'error')", true);
            }
        }
    }
}