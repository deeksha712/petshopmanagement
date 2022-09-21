using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using pet.Entities;
using System.Web;
using System.Security.Cryptography.X509Certificates;
using System.Linq.Expressions;
using System.Data;

namespace pet_shop_data_layer
{
    public class CartItemservices
    {
        Cartitemrepository repository;
        public CartItemservices()
        {
            repository = new Cartitemrepository();
        }
        public DataTable AddCartItem(CartItem cartitem)
        {
            try
            {
                return repository.AddCartItem(cartitem);
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
                return repository.deletecartitem(cartitem);
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
                return repository.GetbyCartitemId(cartitem);
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
                return repository.UpdateCartitem(cartitem);
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
                return repository.getallitems();
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
                return repository.Deletecartitem();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}