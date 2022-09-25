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
    public class OrderDetailsrepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlDataAdapter command = null;

        public DataTable Addorderdetails(OrderDetails orderdetails)
        {
            try
            {

                command = new SqlDataAdapter($"insert into OrderDetails values('{orderdetails.Orderid}','{orderdetails.username}','{orderdetails.pcode}','{orderdetails.productname}','{orderdetails.quantity}','{orderdetails.TotalPrice}','{orderdetails.Address}','{orderdetails.orderdate}')", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable deleteorderdetails(OrderDetails orderdetails)
        {
            try
            {
                command = new SqlDataAdapter($"delete from OrderDetails where Orderid='{orderdetails.Orderid}' ", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        /*public DataTable GetorderdetailsbyId(OrderDetails orderdetails)
        {
            try
            {
                command = new SqlDataAdapter($"select * from orderdetails where username='{orderdetails.username}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }*/
        public DataTable Getmaxordersid()
        {
            command = new SqlDataAdapter($"select MAX(Orderid) from OrderDetails", connection);
            DataTable dt = new DataTable();
            command.Fill(dt);
            return dt;
        }
        public DataTable GetbyorderId(OrderDetails orderdetails)
        {
            command = new SqlDataAdapter($"select * from OrderDetails where Orderid={orderdetails.Orderid}", connection);
            DataTable dt = new DataTable();
            command.Fill(dt);
            return dt;
        }
        /*public DataTable UpdateCartitem(CartItem cartitem)
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
        }*/
        public DataTable getallitems()
        {
            try
            {
                command = new SqlDataAdapter("select * from OrderDetails", connection);
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
