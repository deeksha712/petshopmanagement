using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace petshop.UI
{
    public partial class Site3for_viewproducts : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == (null))
                {
                    btnlogin.Visible = true;
                    LinkButton2.Visible = true;
                    LinkButton3.Visible = false;
                    LinkButton1.Visible = false;
                    btncart.Visible = false;
                    btnadmin.Visible = true;
                }
                else if (Session["role"].Equals("user"))
                {
                    btnlogin.Visible = false;
                    LinkButton2.Visible = true;
                    LinkButton3.Visible = true;
                    LinkButton1.Visible = true;
                    btncart.Visible = true;
                    LinkButton1.Text = "Hello " + Session["username"].ToString();
                    btnadmin.Visible = false;
                }

            }
            catch (Exception ex)
            {

            }

        }

        protected void btlogin(object sender, EventArgs e)
        {
            Response.Redirect("Loginform.aspx");
        }

        protected void btnregister(object sender, EventArgs e)
        {
            Response.Redirect("Registerform.aspx");
        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void btncart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
    }
}