using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pet.Entities;
using System.Data;
using petshop.Businesslayer;
using static System.Runtime.CompilerServices.RuntimeHelpers;
using System.Data.SqlClient;

namespace petshop.UI
{
    public partial class Add_Product : System.Web.UI.Page
    {
        static string global_filepath;
        productservices productservice = new productservices();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            productsGrid.DataBind();
        }


        protected void Buttongo(object sender, EventArgs e)
        {
            try
            {
                product Product = new product();

                Product.procode = productid.Text;
                DataTable dt = new DataTable();
                productservices productservice = new productservices();
                dt = productservice.GetProductById(Product);
                if (dt.Rows.Count > 0)
                {

                    txtname.Text = dt.Rows[0]["productname"].ToString();
                    txttype.Text = dt.Rows[0]["protype"].ToString();
                    txtstock.Text = dt.Rows[0]["stock"].ToString();
                    txtprice.Text = dt.Rows[0]["price"].ToString();
                    global_filepath = dt.Rows[0]["link"].ToString();



                }
            }
            catch (Exception)
            {

            }

        }

        protected void btnadd(object sender, EventArgs e)
        {
            try
            {
                string filepath = "~/petsimages/";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/petsimages/" + filename));
                filepath = "~/petsimages/" + filename;
                //FileUpload1.SaveAs(Server.MapPath("~/petsimages/") + Path.GetFileName("FileUpload1.Filename"));
                //String link = "petsimages/" + Path.GetFileName(FileUpload1.FileName);
                product Product = new product()
                {
                    procode = productid.Text,
                    productname = txtname.Text,
                    protype = txttype.Text,
                    stock = int.Parse(txtstock.Text),
                    price = int.Parse(txtprice.Text),
                    link = filepath
                };

                productservice.Addproduct(Product);
                productsGrid.DataBind();
                productid.Text = String.Empty;
                lbmsg.Text = "Record Added";
            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.Message;
            }
        }

        protected void btnupdate(object sender, EventArgs e)
        {
            try
            {
                string filepath = "~/petsimages/";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                if (filename == "" || filename == null)
                {
                    filepath = global_filepath;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("petsimages/" + filename));
                    filepath = "~/petsimages/" + filename;
                }
                product Product = new product()
                {
                    //productservices productservices = new productservices();
                    procode = productid.Text,
                    productname = txtname.Text,
                    protype = txttype.Text,
                    stock = int.Parse(txtstock.Text),
                    price = int.Parse(txtprice.Text),
                    link = global_filepath,
                };
                //productservices.Updateproduct(Product);
                lbmsg.Text = "Record updated";
                productservice.Updateproduct(Product);
                productsGrid.DataBind();
                
                
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}

  