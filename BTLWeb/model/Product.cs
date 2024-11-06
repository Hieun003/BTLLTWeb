using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWeb.model
{
    public class Product
    {
        private int id, quantity;
        private string img;
        private string name;
        private decimal price;
        private string description;
        public int Id { get { return id; } set { id = value; } }
        public string Name { get { return name; } set { name = value; } }
        public string Img { get { return img; } set { img = value; } }
        public decimal Price { get { return price; } set { price = value; } }
        public string Description { get { return description; } set { description = value; } }
        public int Quantity { get { return quantity; } set { quantity = value; } }
        public decimal TotalPrice
        {
            get
            {
                return Price * Quantity;
            }
        }
        public Product(int id, string img, string name, decimal price, string description, int quantity=1)
        {
            this.Id = id;
            this.Img = img;
            this.Name = name;
            this.Price = price;
            this.Description = description;
            this.Quantity = quantity;
        }
    }
}