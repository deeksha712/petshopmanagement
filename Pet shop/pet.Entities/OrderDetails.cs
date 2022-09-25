using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pet.Entities
{
    public class OrderDetails
    {
        public int Orderid { get; set; }
        public string username { get; set; }

        public string pcode { get; set; }

        public string productname { get; set; }
       
        public int quantity { get; set; }
       
        public int TotalPrice { get; set; }

        public string orderdate { get; set; }

        public string Address { get; set; }

    }
}
