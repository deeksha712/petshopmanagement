using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using pet_shop_data_layer;
using pet.Entities;
using System.Data;

namespace petshop.Businesslayer
{
    public class productservices
    {
        productrepository repository;
        public  productservices()
        {
            repository = new productrepository();
        }
        public void Addproduct(product Product)
        {
            try
            {
                repository.Addproduct(Product);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Deleteproduct(string procode)
        {
            try
            {
                repository.Deleteproduct(procode);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Updateproduct(string productname,string protype,int stock,int price,string link,string procode)
        {
            try
            {
                repository.Updateproduct(productname,protype,stock,price,link,procode);
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
                return repository.GetProductById(Product);
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
                return repository.GetAllProducts();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
