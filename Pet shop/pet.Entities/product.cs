using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pet.Entities
{
    public class product
    {
        public string procode { get; set; }
        public string productname { get; set; }
        public string protype { get; set; }
        public int stock { get; set; }
        public int price { get; set; }

        public string  link { get; set; }


    }
}
