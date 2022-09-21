using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using pet_shop_data_layer;
using pet.Entities;
namespace petshop.Businesslayer
{
    public class customerservices
    {
        Customerrepository repository;
        public customerservices()
        {
            repository = new Customerrepository();
        }
        public void Addcustomer(customer Customer)
        {
            try
            {
                repository.Addcustomer(Customer);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Deletecustomer(string cid)
        {
            try
            {
                repository.Deletecustomer(cid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Updatecustomer(customer Customer)
        {
            try
            {
                repository.Updatecustomer(Customer);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public  List<customer>GetAllcustomers()
        {
            try
            {
                return repository.GetAllcustomers();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
