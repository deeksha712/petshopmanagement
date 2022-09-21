using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using pet.Entities;
using petshop.Businesslayer;
using System.Web.UI.WebControls.WebParts;
using System.Windows.Controls;
using pet_shop_data_layer;

namespace petshop.UI
{
    public partial class ViewCart : System.Web.UI.Page
    {

        
            CartItemservices cartitemservices = new CartItemservices();
            
            DataTable dt = new DataTable();
            productservices productservices = new productservices();
      
            protected void Page_Load(object sender, EventArgs e)
            {

                    GridView1.DataBind();
                
            if (GridView1.Rows.Count != 0)
                {
                    GridView1.FooterRow.Cells[0].Text = "Total Amount";
                    GridView1.FooterRow.Cells[1].Text = TotalAmount().ToString();
                    Placeordeer.Visible = true;
                }
            }

            protected void delete_Click(object sender, EventArgs e)
            {
                try
                {
                    LinkButton bt = (LinkButton)sender;
                    string ar = bt.CommandArgument;
                    CartItem cartitem = new CartItem();
                    cartitem.pcode = ar;
                    dt = cartitemservices.deletecartitem(cartitem);
                    GridView1.DataBind();
                }
                catch (Exception)
                {

                    throw;
                }
            }

            protected void Placeordeer_Click(object sender, EventArgs e)
            {
                try
                {
                    if (GridView1.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Order Placed successful');</script>");
                    }
                    CartItem cartitem = new CartItem();
                    CartItemservices cartitemservices = new CartItemservices();
                    DataTable dt = new DataTable();
                    //dt = cartitemservices.Deletecartitem();
                    GridView1.DataSource = dt;
                    GridView1.DataSourceID = null;
                    GridView1.DataBind();

                }
                catch (Exception)
                {

                    throw;
                }
            }
            public float TotalAmount()
            {
                float tprice = 0;
                foreach (GridViewRow row in GridView1.Rows)
                {
                    tprice = tprice + float.Parse(row.Cells[1].Text);
                }
                return tprice;
            }

        
    }
}