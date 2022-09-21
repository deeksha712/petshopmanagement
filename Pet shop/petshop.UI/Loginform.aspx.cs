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
using System.Data;

namespace petshop.UI
{
    public partial class Loginform : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void singin(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnlogin_click(object sender, EventArgs e)
        {
            string user = txtusername.Text.Trim();
            try
            {
                command = new SqlCommand($"select * from Userdetails where (username='" + txtusername.Text.Trim() + "' AND " +
                    "upassword='" + txtpassword.Text.Trim() + "')", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                //DataTable dt=new DataTable();
                //adapter.Fill(dt);
                connection.Open();
                SqlDataReader dt = command.ExecuteReader();
                if (dt.HasRows)
                {
                    while (dt.Read())
                    {

                        //Response.Write("<script>alert('" + dr.GetValue(1).ToString()+"');</script>");
                        Session["username"] = dt.GetValue(1).ToString();
                        Session["Buyitems"] = null;
                        Session["role"] = "user";
                        //fillsavedcart();

                        Response.Redirect("Home.aspx");
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User credentials');</script>");
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}