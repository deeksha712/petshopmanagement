using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using pet.Entities;
using petshop.Businesslayer;
using System.Web.UI.WebControls.WebParts;
using System.Windows.Controls;
using System.Diagnostics;
using System.Windows.Navigation;
using System.Drawing.Printing;
using System.IO;
using System.Xml.Linq;
using pet_shop_data_layer;

namespace petshop.UI
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].ToString() == "user")
            {
                Response.Redirect("UserLogin.aspx");
            }

        }
       
    }
}