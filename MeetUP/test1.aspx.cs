using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetUP
{
    public partial class test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string message = "Selected Item: " + DropDownList1.SelectedItem.Text;
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", "alert('" + message + "');", true);
        }
    }
}
