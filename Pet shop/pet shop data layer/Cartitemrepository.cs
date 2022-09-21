using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using pet.Entities;
using System.Web;
using System.Security.Cryptography.X509Certificates;

namespace pet_shop_data_layer
{
    public class Cartitemrepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlDataAdapter command = null;

        public DataTable AddCartItem(CartItem cartitem)
        {
            try
            {

                command = new SqlDataAdapter($"insert into cart values('{cartitem.pcode}','{cartitem.productname}','{cartitem.protype}','{cartitem.price}','{cartitem.link}','{cartitem.quantity}','{cartitem.TotalPrice}','{cartitem.username}')", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable deletecartitem(CartItem cartitem)
        {
            try
            {
                command = new SqlDataAdapter($"delete from cart where Pcode='{cartitem.pcode}' ", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable GetbyCartitemId(CartItem cartitem)
        {
            try
            {
                command = new SqlDataAdapter($"select * from cart where pcode='{cartitem.pcode}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable UpdateCartitem(CartItem cartitem)
        {
            try
            {
                command = new SqlDataAdapter($"update cart set quantity={cartitem.quantity},TotalPrice={cartitem.TotalPrice} where pcode='{cartitem.pcode}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable getallitems()
        {
            try
            {
                command = new SqlDataAdapter("select * from cart", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Deletecartitem()
        {
            try
            {
                command = new SqlDataAdapter("delete from cart", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}