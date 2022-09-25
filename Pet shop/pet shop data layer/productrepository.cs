using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using pet.Entities;

namespace pet_shop_data_layer
{
    public class productrepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlDataAdapter command = null; 
        SqlCommand comman= null;

        public void Addproduct(product Product)
        {
            try
            {
                command = new SqlDataAdapter($"insert into product values({Product.procode},'{Product.productname}','{Product.protype}','{Product.stock}','{Product.price}','{Product.link}')",connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public DataTable Deleteproduct(string procode)
        {
            try
            {
                command = new SqlDataAdapter($"Delete from product where Procode ={procode}", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;

            }
            catch (Exception)
            {

                throw;
            }
   
        }
        public DataTable Updateproduct(product Product)
        {
            try
            {
               command = new SqlDataAdapter($"update product set productname='{Product.productname}',protype='{Product.protype}',stock='{Product.stock}',price='{Product.price}' WHERE procode='{Product.procode}'",connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
            
        }
        public DataTable GetProductById(product Product)
        {
            try
            {
                
                command = new SqlDataAdapter($"select * from product where procode={Product.procode}", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<product> GetAllProducts()
        {
            try
            {
                List<product> products = new List<product>();
                comman = new SqlCommand($"Select * from product", connection);
                connection.Open();
                SqlDataReader dr = comman.ExecuteReader();
                while (dr.Read())
                {
                   
                    product Product = new product();
                    Product.procode = dr["procode"].ToString();
                    Product.productname = dr["productname"].ToString();
                    Product.price = (int)dr["price"];
                    Product.stock = (int)dr["stock"];
                    Product.protype = dr["protype"].ToString();
                    Product.link = dr["link"].ToString();
                    products.Add(Product);
                }
                return products;
            }
            catch (Exception e)
            {
                throw;
            }
            
        }
    }
}

