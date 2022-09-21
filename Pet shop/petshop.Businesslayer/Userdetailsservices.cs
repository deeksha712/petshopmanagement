using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using pet_shop_data_layer;
using pet.Entities;
namespace petshop.Businesslayer
{
    public class Userdetailsservices
    {
        Userdetailsrepository repository;
        public Userdetailsservices()
        {
            repository = new Userdetailsrepository();
        }
        public void Adduser(Userdetails user)
        {
            try
            {
                repository.Adduser(user);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Deleteuser(string name)
        {
            try
            {
                 repository.Deleteuser(name);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Updateuser(Userdetails user)
        {
            try
            {
                repository.Updateuser(user);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Userdetails> GetAllusers()
        {
            try
            {
                return repository.GetAllusers();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
