using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace petshop.UI
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void buttonlogin(object sender, EventArgs e)
        {
            if (Textuser.Text == "deeksha@gmail.com" & Textpwd.Text == "srihitha")
            {
                Response.Redirect("Admin.aspx");
                Session["role"] = "admin";
            }
            else
            {
                lbmsg.Text = "Invalid credentials";
                
            }
        }
    }
}