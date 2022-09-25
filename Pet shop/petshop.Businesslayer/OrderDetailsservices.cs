using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using pet.Entities;
using System.Web;
using System.Security.Cryptography.X509Certificates;
using System.Linq.Expressions;
using System.Data;

namespace pet_shop_data_layer
{
public class OrderDetailsservices
    {
        OrderDetailsrepository repository;

        public OrderDetailsservices()
        {
            repository = new OrderDetailsrepository();
        }
        public DataTable Addorderdetails(OrderDetails orderdetails)
        {
            try
            {
                return repository.Addorderdetails(orderdetails);
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
                return repository.deleteorderdetails(orderdetails);
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
                return repository.GetorderdetailsbyId(orderdetails);
            }
            catch (Exception)
            {

                throw;
            }
        }*/

        public DataTable Getmaxordersid()
        {
            try
            {
                return repository.Getmaxordersid();
            }
            catch
            {
                throw;
            }
        }

        public DataTable GetbyorderId(OrderDetails orderdetails)
        {
            try
            {
                return repository.GetbyorderId(orderdetails);
            }
            catch(Exception)
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

    }
}
