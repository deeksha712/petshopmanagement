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
using pet_shop_data_layer;
using System.Diagnostics;

namespace petshop.UI
{
    public partial class Ordercompleted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
       
        protected void Home_Click(object sender,EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}