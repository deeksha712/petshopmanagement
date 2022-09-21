using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pet.Entities;
using petshop.Businesslayer;
using static System.Runtime.CompilerServices.RuntimeHelpers;


namespace petshop.UI
{
    public partial class Registerform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ADD_USER(object sender, EventArgs e)
        {
            try
            {
                Userdetails user = new Userdetails();
                
                user.name = txtname.Text;
                user.username = txtuname.Text;
                user.upassword=txtpassword.Text;
                user.confirmpassword=txtconfirmpassword.Text;
                user.addres=txtaddress.Text;
                user.city=txtcity.Text; 
                
                //user.DOB = txtdob.Text;
                user.gender=txtgender.Text;
                user.phone = txtphone.Text;
                Userdetailsservices userdetailsservices = new Userdetailsservices();
                userdetailsservices.Adduser(user);
                /*Product.procode = txtcode.Text;
                Product.productname = txtname.Text;
                Product.protype = txttype.Text;
                Product.stock = int.Parse(txtstock.Text);
                Product.price = int.Parse(txtprice.Text);
                productservices productservices = new productservices();
                productservices.Addproduct(Product);*/
                lbmsg.Text = "Record Added";
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}