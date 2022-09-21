using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace petshop.UI
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_admin(object sender, EventArgs e)
        {
            if(txtusername.Text=="deeksha@gmail.com" & txtpassword.Text=="srihitha")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}