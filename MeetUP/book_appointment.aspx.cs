using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetUP
{
    public partial class book_appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex += 1;
        }

        protected void btn_verify_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex += 1;
        }

        protected void btn_next_1_Click(object sender, EventArgs e)
        {
            MultiView_1.ActiveViewIndex += 1;
        }
    }
}