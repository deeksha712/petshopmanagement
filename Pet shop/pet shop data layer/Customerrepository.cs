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
    public class Customerrepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlCommand command = null;

        public void Addcustomer(customer Customer)
        {
            try
            {
                command = new SqlCommand($"insert into customer values({Customer.cid},'{Customer.cname}','{Customer.username}','{Customer.password}')", connection);
                connection.Open();
                command.ExecuteNonQuery();
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
        public void Deletecustomer(string cid)
        {
            try
            {
                command = new SqlCommand($"delete from customer where cid ={cid}", connection);
                connection.Open();
                command.ExecuteNonQuery();
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
        public void Updatecustomer(customer Customer)
        {
            try
            {
                command = new SqlCommand($"Update customer set username={Customer.username},password ='{Customer.password}' where procode ={Customer.cid}", connection);
                connection.Open();
                command.ExecuteNonQuery();
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

        public List<customer> GetAllcustomers()
        {
            try
            {
                List<customer> customers = new List<customer>();
                command = new SqlCommand($"Select * from customer", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {

                    customer Customer = new customer();
                    Customer.cid = dr["cid"].ToString();
                    Customer.cname = dr["cname"].ToString();
                    Customer.username = dr["username"].ToString();
                    Customer.password = dr["password"].ToString();
                    customers.Add(Customer);
                }
                return customers;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
