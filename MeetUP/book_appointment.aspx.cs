using Google.Protobuf.WellKnownTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using AjaxControlToolkit;
using System.Data.SqlClient;

namespace MeetUP
{
    public partial class book_appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    SqlConnect conn = new SqlConnect();
                    conn.Connection();
                    conn.conn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT id, position, full_name from management", conn.conn);
                    emptxt.DataSource = cmd.ExecuteReader();
                    emptxt.DataBind();
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
       
        protected void btn_next_1_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex += 1;
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex -= 1;
        }

        protected void btn_see_details_Click(object sender, EventArgs e)
        {
            email_txt.Text = emailtxt.Text;
            date_txt.Text = datetxt.Text;
            emp_txt.Text = emptxt.SelectedItem.Text;
            desig_txt.Text = desigtxt.SelectedItem.Text;
            mob_txt.Text = mobtxt.Text;
            resn_txt.Text = resntxt.Text;
            desc_txt.Text = desctxt.Text;
        }

        protected void btn_book_Click(object sender, EventArgs e)
        {   
            try
            {
                SqlConnect conn = new SqlConnect();
                conn.Connection();
                conn.conn.Open();
                string cmdText = "INSERT INTO book_appointment(email, booking_date, meeting_with, current_designation, mobile_no, r_booking, p_emergency) VALUES (@email, @booking_date, @meeting_with, @current_designation, @mobile_no, @r_booking, @p_emergency)";
                MySqlCommand cmd = new MySqlCommand(cmdText, conn.conn);
                cmd.Parameters.AddWithValue("@email", emailtxt.Text);
                cmd.Parameters.AddWithValue("@booking_date", datetxt.Text);
                cmd.Parameters.AddWithValue("@meeting_with", emptxt.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@current_designation", desigtxt.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@mobile_no", mobtxt.Text);
                cmd.Parameters.AddWithValue("@r_booking", resntxt.Text);
                cmd.Parameters.AddWithValue("@p_emergency", desctxt.Text);
                int v = cmd.ExecuteNonQuery();
                conn.conn.Close();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Appointment Created Successfully!!!.')</script>");
            }
            catch (Exception)
            {                
                Response.Write("<script LANGUAGE='JavaScript' >alert('Something went wrong!!!.')</script>");
            }
            
        }

    }
}