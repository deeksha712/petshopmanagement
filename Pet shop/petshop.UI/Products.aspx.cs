using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pet.Entities;
using petshop.Businesslayer;
using static System.Runtime.CompilerServices.RuntimeHelpers;
using System.Data.SqlClient;


namespace petshop.UI
{
    public partial class Add_Product : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }


        protected void Buttongo(object sender, EventArgs e)
        {

        }

        protected void btnadd(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/petsimages/") + Path.GetFileName("FileUpload1.Filename"));
            String link = "petsimages/" + Path.GetFileName(FileUpload1.FileName);
            try
            {
                product Product = new product();
                Product.procode = txtid.Text;
                Product.productname = txtname.Text;
                Product.protype = txttype.Text;
                Product.stock = int.Parse(txtstock.Text);
                Product.price = int.Parse(txtprice.Text);
                Product.link = link;
                
                productservices productservices = new productservices();
                productservices.Addproduct(Product);
                lbmsg.Text = "Record Added";
            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.Message;
            }
        }

        protected void btnupdate(object sender, EventArgs e)
        {

        }

        protected void btndelete(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnaddpic(object sender, EventArgs e)
        {

        }
    }
}