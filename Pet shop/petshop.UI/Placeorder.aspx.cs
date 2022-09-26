using pet.Entities;
using pet_shop_data_layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using petshop.Businesslayer;
using System.Web.UI.WebControls.WebParts;
using System.Windows.Controls;
using System.Diagnostics;

namespace petshop.UI
{
    public partial class Placeorder : System.Web.UI.Page
    {
        int id = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            Orderid();
        }
        protected void buyorder_Click(object sender, EventArgs e)
        {
            try
            {
                CartItem cartitem = new CartItem();
                CartItemservices cartItemservices = new CartItemservices();
                DataTable dt1 = new DataTable();
                dt1 = cartItemservices.getallitems();
                int r = dt1.Rows.Count;
                int i = 0;
                while (i < r)
                {
                    OrderDetailsservices orderDetailsservices = new OrderDetailsservices();
                    OrderDetails orderdetails = new OrderDetails()
                    {
                        pcode = dt1.Rows[i][0].ToString(),
                        productname = dt1.Rows[i][1].ToString(),
                        quantity = int.Parse(dt1.Rows[i][5].ToString()),
                        TotalPrice = int.Parse(dt1.Rows[i][6].ToString()),
                        orderdate = DateTime.Now.ToString(),
                        username = Session["username"].ToString(),
                        Orderid = id++,
                        Address = addresstxt.Text
                    };
                    orderDetailsservices.Addorderdetails(orderdetails);
                    i = i + 1;
                }
                DataTable dt = new DataTable();
                cartItemservices.Deletecartitem();
                Response.Redirect("Ordercompleted.aspx");
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void Orderid()
        {
            OrderDetailsservices orderDetailsservices = new OrderDetailsservices();
            OrderDetails orderDetails = new OrderDetails();
            DataTable dtt = new DataTable();
            dtt = orderDetailsservices.Getmaxordersid();
            if (dtt.Rows.Count > 0)
            {

                if (dtt.Rows[0][0].ToString() == "")
                {

                    id=1;
                    
                }
                else
                {
                    int cid = Convert.ToInt32(dtt.Rows[0][0].ToString());
                    cid++;
                    id = cid;
                }
            }
            
        }
    }
}