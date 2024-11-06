using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWeb
{
    public class Produc
    {
        private static int _nextId = 1;  

        public int ProductID { get; private set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
        public decimal TotalPrice
        {
            get
            {
                return Price * Quantity;
            }
        }

        public Produc()
        {
            ProductID = _nextId++;
        }
    }
}