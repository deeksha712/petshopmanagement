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
using System.Diagnostics;

namespace petshop.UI
{
    public partial class ViewCart : System.Web.UI.Page
    {

        
            CartItemservices cartitemservices = new CartItemservices();
            
            DataTable dt = new DataTable();
            productservices productservices = new productservices();

        
        protected void Page_Load(object sender, EventArgs e)
            {


            cartGrid.DataBind();
                
            if (cartGrid.Rows.Count != 0)
                {
                    cartGrid.FooterRow.Cells[0].Text = "Total Amount";
                    cartGrid.FooterRow.Cells[1].Text = TotalAmount().ToString();
                    placeorder.Visible = true;
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
                    cartGrid.DataBind();
            }
                catch (Exception)
                {

                    throw;
                }
            }

        protected void Placeorder_Click(object sender, EventArgs e)
        {
            if (cartGrid.Rows.Count > 0)
            {
                Response.Redirect("Placeorder.aspx");
            }
        }
            public float TotalAmount()
            {
                float tprice = 0;
                foreach (GridViewRow row in cartGrid.Rows)
                {
                    tprice = tprice + float.Parse(row.Cells[1].Text);
                }
                return tprice;
            }

        
    }
}