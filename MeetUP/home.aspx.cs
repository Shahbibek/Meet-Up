using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetUP
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                txtemail.Text = Session["email"].ToString();
                //Response.Write(labeltext1.Text);
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/login.aspx");
        }
    }
}