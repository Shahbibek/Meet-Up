using Google.Protobuf.WellKnownTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

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
            date_txt.Text = datetxt.Text;
            emp_txt.Text = emptxt.SelectedItem.Text;
            desig_txt.Text = desigtxt.SelectedItem.Text;
            mob_txt.Text = mobtxt.Text;
            resn_txt.Text = resntxt.Text;
            desc_txt.Text = desctxt.Text;
        }
    }
}