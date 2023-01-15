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
                try
                {
                    if (!Page.IsPostBack)
                    {
                        BindReapeter();
                        DataFetch();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
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
                MySqlCommand cmd = new MySqlCommand("Update users set fname=@fname,lname=@lname,display_name=@display_name,phone_no=@phone_no,c_designation=@c_designation WHERE user_id=@user_id", conn.conn);
                cmd.Parameters.AddWithValue("@user_id", Session["userId"].ToString());                                
                cmd.Parameters.AddWithValue("@fname", fnametxt.Text);
                cmd.Parameters.AddWithValue("@lname", lnametxt.Text);
                cmd.Parameters.AddWithValue("@display_name", dnametxt.Text);
                cmd.Parameters.AddWithValue("@phone_no", phonetxt.Text);
                cmd.Parameters.AddWithValue("@c_designation", desigtxt.Text);
                int v = cmd.ExecuteNonQuery();
                conn.conn.Close();
                Response.Redirect("index.aspx");
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

        //Repeater data view binding start
        public void BindReapeter()
        {
            SqlConnect conn = new SqlConnect();
            conn.Connection();
            conn.conn.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter("Select id, status from book_appointment WHERE is_delete=@is_delete AND user_id=@User_id", conn.conn);
            sda.SelectCommand.Parameters.AddWithValue("@User_id", Session["userId"].ToString());
            sda.SelectCommand.Parameters.AddWithValue("@is_delete", 0);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            col_repeater.DataSource = dt;
            col_repeater.DataBind();
        }

        //Repeater data view binding end

        // data fetch start for profile view 

        public void DataFetch()
        {
            SqlConnect conn = new SqlConnect();
            conn.Connection();
            conn.conn.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from users where user_id=@userId", conn.conn);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
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
        // data fetch end for profile view 


        // data bind status color change functionality 

        protected void col_repeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            
        }


    }
}