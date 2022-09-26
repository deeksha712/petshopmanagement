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
    public class Userdetailsrepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusadb"].ConnectionString);
        SqlCommand command = null;
        public void Adduser(Userdetails user)
        {
            try
            {
                command = new SqlCommand($"insert into Userdetails values({user.name},'{user.username}','{user.upassword}','{user.confirmpassword}','{user.addres}','{user.city}','{user.gender}','{user.phone}')", connection);
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
        public void Deleteuser(string name)
        {
            try
            {
                command = new SqlCommand($"delete from Userdetails where name ={name}", connection);
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
        public void Updateuser(Userdetails user)
        {
            try
            {
                command = new SqlCommand($"Update Userdetails set phone={user.phone} address={user.addres} city={user.city} where name ='{user.name}'", connection);
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
        public List<Userdetails> GetAllusers()
        {
            try
            {
                List<Userdetails> users = new List<Userdetails>();
                command = new SqlCommand($"Select * from Userdetails", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {

                    Userdetails user = new Userdetails();
                   
                    user.name = dr["name"].ToString();
                    user.username = dr["username"].ToString();
                    user.upassword = dr["upassword"].ToString();
                    user.confirmpassword = dr["confirmpassword"].ToString();
                    user.addres = dr["addres"].ToString();
                    user.city = dr["city"].ToString();
                   
                  
                    user.gender = dr["gender"].ToString();
                    user.phone = dr["phone"].ToString();
                    users.Add(user);
                }
                return users;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
