using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pet.Entities
{
    public class Bill
    {
        public int billid { get; set; } 
        public string transactiontype { get; set; }
        public string procode { get; set; }
        public int quantity { get; set; }
        public int price { get; set; }
        public int total { get; set; }
        public string cid { get; set; }
        public string cashier { get; set; }

    }
}
