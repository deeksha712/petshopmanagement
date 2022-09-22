using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace petshop.UI
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==(null))
                {
                    btnlogin.Visible = true;
                    LinkButton2.Visible = true;
                    LinkButton3.Visible = false;
                    LinkButton1.Visible = false;
                    btnadmin.Visible = true;
                }
                else if (Session["role"].Equals("user"))
                {
                    btnlogin.Visible = false;
                    LinkButton2.Visible = true;
                    LinkButton3.Visible = true;
                    LinkButton1.Visible = true;
                    LinkButton1.Text = "Hello!!!"+Session["username"].ToString();
                    btnadmin.Visible = false;
                }

            }
            catch(Exception ex)
            {
                
            }


        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }

        protected void btnviewproducts(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }

        

        protected void btnregister(object sender, EventArgs e)
        {
            Response.Redirect("Registerform.aspx");
        }

        protected void btnlogout(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btlogin(object sender, EventArgs e)
        {
            Response.Redirect("Loginform.aspx");
        }
    }
}