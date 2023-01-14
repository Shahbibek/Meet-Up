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
                    MySqlCommand cmd = new MySqlCommand("Select * from users where user_id=@userId", conn.conn);
                    cmd.Parameters.AddWithValue("@userId",Session["userId"].ToString());
                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {                       
                        d_name.Text = reader["display_name"].ToString();
                        email_id.Text = reader["email"].ToString();
                        mob_no.Text = reader["phone_no"].ToString();
                        txt_name.Text = reader["display_name"].ToString();
                        txt_email.Text = reader["email"].ToString();
                        txt_mob.Text = reader["phone_no"].ToString();                      
                        fnametxt.Text = reader["fname"].ToString();
                        lnametxt.Text = reader["lname"].ToString();
                        dnametxt.Text = reader["display_name"].ToString();
                        emailtxt.Text = reader["email"].ToString();
                        phonetxt.Text = reader["phone_no"].ToString();
                        desigtxt.Text = reader["c_designation"].ToString();
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

        protected void edit_profile_Click(object sender, EventArgs e)
        {
            SqlConnect conn = new SqlConnect();
            conn.Connection();
            conn.conn.Open();
            MySqlCommand cmd = new MySqlCommand("Select fname, lname, display_name, email, phone_no, c_designation from users where user_id=@user_Id", conn.conn);
            cmd.Parameters.AddWithValue("@user_Id", Session["userId"].ToString());
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                fnametxt.Text = reader["fname"].ToString();
                lnametxt.Text = reader["lname"].ToString();
                dnametxt.Text = reader["display_name"].ToString();
                emailtxt.Text = reader["email"].ToString();
                phonetxt.Text = reader["phone_no"].ToString();
                desigtxt.Text = reader["c_designation"].ToString();
                reader.Close();
                conn.conn.Close();
            }
            else
            {
                Console.Write("Something went wrong");
            }

        }

        protected void save_profile_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnect conn = new SqlConnect();
                conn.Connection();
                conn.conn.Open();
                string cmdText = "UPDATE INTO users SET fname=@fname,lname=@lname,display_name=@display_name,phone_no=@phone_no,c_designation=@c_designation WHERE user_id=@user_ID";
                MySqlCommand cmd = new MySqlCommand(cmdText, conn.conn);
                cmd.Parameters.AddWithValue("@user_ID", Session["userId"].ToString());
                cmd.Parameters.AddWithValue("@fname", fnametxt.Text);
                cmd.Parameters.AddWithValue("@lname", lnametxt.Text);
                cmd.Parameters.AddWithValue("@display_name", dnametxt.Text);
                cmd.Parameters.AddWithValue("@phone_no", phonetxt.Text);
                cmd.Parameters.AddWithValue("@c_designation", desigtxt.Text);
                conn.conn.Close();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Profile Updated Successfully !!!.')</script>");
            }
            catch(Exception )
            {
                //Response.Write(ex.ToString());
                Response.Write("<script LANGUAGE='JavaScript' >alert('Something went wrong !!!.')</script>");
            }
           
        }

        protected void appoint_s_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex += 1;
        }

        protected void profile_s1_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex -= 1;
        }
    }
}