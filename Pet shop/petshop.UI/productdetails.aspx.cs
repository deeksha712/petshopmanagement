using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pet.Entities;

namespace petshop.UI
{
    public partial class Newpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /*Label1.Text = Request.QueryString["procode"];
            Label2.Text = Request.QueryString["productname"];
            Label3.Text = Request.QueryString["protype"];
            Label4.Text = Request.QueryString["stock"];
            Label5.Text = Request.QueryString["price"];*/
        }

        protected void btnAddtocart(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Loginform.aspx");
            }
            else
            {
                Response.Redirect("AddtoCart.aspx");
            }
        }

        protected void addtocart(object sender, EventArgs e)
        {
            int price = int.Parse(((Label)DataList1.Controls[0].FindControl("pricelabel")).Text);
            string productname = ((Label)DataList1.Controls[0].FindControl("productnamelabel")).Text;
            string ProductImageUrl = ((Label)DataList1.Controls[0].FindControl("linklabel")).Text;
            string ProductID = (Request.QueryString["procode"]);
            if (Session["id"] == null)
            {
                Response.Redirect("Loginform.aspx");

            }
            else {
                //Insert(ProductID, productname, price, ProductImageUrl);
                  Server.Transfer("Products.aspx");
            }

        }
    }
}