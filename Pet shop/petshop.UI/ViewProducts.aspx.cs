using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using petshop.Businesslayer;
using pet.Entities;
using WebGrease.ImageAssemble;
using System.Windows.Documents;
using pet_shop_data_layer;
using System.Web.UI.WebControls.WebParts;

namespace petshop.UI
{
    public partial class prod : System.Web.UI.Page
    {
        CartItemservices cartitemservices = new CartItemservices();
        DataTable dt = new DataTable();
        productservices productservice = new productservices();
        product Product = new product();
        CartItem cartitem = new CartItem();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["username"] == null)
            {
                buttonviewcart.Visible = false;
            }
            else
            {
                buttonviewcart.Visible = true;
            }
            
        }
        /*protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

                Session["addproduct"] = "true";

                if (e.CommandName == "addtocart")
                {
                    DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    int quantity = int.Parse(list.SelectedValue);
                    Response.Redirect("ViewCart.aspx?procode=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());

                }
        }*/

        protected void Gridview1_Command(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("Loginform.aspx");
                }
                else
                {
                    if (e.CommandName == "AddCart")
                    {
                        //GridView1.DataKeys.exists(key);
                        int rowIndex = Convert.ToInt32(e.CommandArgument);
                        GridViewRow r = GridView1.Rows[rowIndex];
                        int quan = int.Parse((r.FindControl("quantity") as DropDownList).Text);
                        string ar = r.Cells[0].Text;

                        if (ar != null)
                        {
                            Product.procode = ar;
                            cartitem.pcode = ar;
                            dt = productservice.GetProductById(Product);
                            int price = int.Parse(dt.Rows[0]["price"].ToString());
                            DataTable dt2 = new DataTable();
                            dt2 = cartitemservices.GetbyCartitemId(cartitem);
                            if (dt2.Rows.Count > 0)
                            {
                                string rc = dt2.Rows[0][0].ToString();
                                int qu = int.Parse(dt2.Rows[0][5].ToString());
                                int newQuan = qu + quan;
                                if (rc == ar)
                                {
                                    cartitem.quantity = newQuan;
                                    cartitem.TotalPrice = price * newQuan;
                                    cartitemservices.UpdateCartitem(cartitem);
                                }
                            }
                            else
                            {
                                while (dt.Rows.Count > 0)
                                {
                                    CartItem cartitem = new CartItem();
                                    Userdetails user = new Userdetails();
                                    Userdetailsservices userService = new Userdetailsservices();
                                    cartitem.pcode = dt.Rows[0]["procode"].ToString();
                                    cartitem.productname = dt.Rows[0]["productname"].ToString();
                                    cartitem.protype = dt.Rows[0]["protype"].ToString();
                                    
                                    cartitem.price = int.Parse(dt.Rows[0]["price"].ToString());
                                    cartitem.link = dt.Rows[0]["link"].ToString();
                                    cartitem.quantity = quan;
                                    lbmsg.Text = "Recorded added";

                                    int TotalPrice = price * quan;
                                    cartitem.TotalPrice = TotalPrice;
                                    cartitem.username = Session["username"].ToString();
                                    dt = cartitemservices.AddCartItem(cartitem);
                                    Session["cart"] = "addcart";

                                }

                            }
                        }

                    }


                }
            }
            catch (Exception)
            {
                throw;
            }

        
        }
        protected void btnsearch(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = SqlDataSource2;
                GridView1.DataBind();
            }
        }



        protected void viewcart(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
        }
}