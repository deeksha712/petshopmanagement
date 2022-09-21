using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pet.Entities
{
    public class CartItem
    {
        
        
         public string pcode
        {
            get; set;
        }

        public string productname { get; set; } 
        
        public string protype{get; set;}
        public int price { get; set; }

        public string link { get; set; }

        public int quantity { get; set; }
        public int TotalPrice { get; set; }

        public string username { get; set; }

        



        //public DateTime _dateCreated;
        //public DateTime _lastUpdate;
        //private List<CartItem> _items;












        /*public CartItem()
        {
            if (this._items == null)
            {
                this._items = new List<CartItem>();
                this._dateCreated = DateTime.Now;
            }
        }
        public CartItem(int sno, string procode, string productname, string protype, int stock, int price, string link, int quantity, string username)
        {
            _sno = sno;
            _procode = procode;
            _productname = productname;
            _protype = protype;
            _stock = stock;
            _price = price;
            _link = link;
            _quantity = quantity;
            _TotalPrice = quantity*price;
            _username = username;
        }
        public List<CartItem> Items
        {
            get { return _items; }
            set { _items = value; }
        }
        public int sno { get; set; }
        public string procode
        {
            get
            {
                return _procode;
            }
            set
            {
                _procode = value;
            }
        }
        public string productname
        {
            get { return _productname; }
            set { _productname = value; }
        }
        public string protype
        {
            get { return _protype; }
            set { _protype = value; }
        }
        public int stock
        {
            get { return _stock; }
            set
            {
                _stock = value;
            }

        }
        public int price
        {
            get { return _price; }
            set
            {
                _price = value;
            }
        }
        public string link
        {
            get { return _link; }
            set { _link = value; }
        }
       public int quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }
       public string username
        {
            get { return _username; }
            set { _username = value; }
        }
        public int Totalprice
        {
            get
            {
                return _quantity-_price;
            }
           
        }
        public void Insert(int sno, string procode, string productname, string protype, int stock, int price, string link, int quantity, string username)
        {
            try
            {
                int ItemIndex = ItemIndexOfID(procode);
                if (ItemIndex == -1)
                {
                    CartItem NewItem = new CartItem();
                    NewItem.procode = procode;
                    NewItem.quantity = quantity;
                    NewItem.price = price;
                    NewItem.productname = productname;
                    NewItem.link = link;
                    NewItem.protype = protype;
                    Items.Add(NewItem);
                }
                else
                {
                    _items[ItemIndex].quantity += 1;
                }
                _lastUpdate = DateTime.Now;
            }
            /*command = new SqlCommand($"insert into cart values('sno','procode','productname','protype','stock','price','plink','quantity') select procode,productname,protype,stock,price from product where procode='{procode}'", connection);
            connection.Open();
            command.ExecuteNonQuery();
            catch (Exception)
            {

                throw;
            }
        }
        public void Update(int RowID, string Procode, int Quantity, int Price)
        {
            CartItem Item = _items[RowID];
            Item.procode = Procode;
            Item.quantity = Quantity;
            Item.price = Price;
            _lastUpdate = DateTime.Now;
        }

        public void DeleteItem(int rowID)
        {
            _items.RemoveAt(rowID);
            _lastUpdate = DateTime.Now;
        }

        private int ItemIndexOfID(string procode)
        {
            int index = 0;
            foreach (CartItem item in _items)
            {
                if (item.procode == procode)
                {
                    return index;
                }
                index += 1;
            }
            return -1;
        }*/


    }
}