using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pet.Entities;
using petshop.Businesslayer;
using System.Configuration;
using System.Data.SqlClient;

namespace petshop.UI
{
    public partial class Home1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        

        protected void Viewcart(object sender, EventArgs e)
        {

        }
    }
}