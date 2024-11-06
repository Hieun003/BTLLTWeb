using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTLWeb
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Account> accounts = new List<Account>();
            accounts.Add(new Account(null, "admin", "admin"));
            Application["account"] = accounts;

            List<Product> products = new List<Product>();
            products.Add(new Product(1, "img/product_1.png", "Bánh mì trứng", 150000, "Bánh mì trứng"));
            products.Add(new Product(2, "img/product_2.png", "Trứng", 200000, "Trứng"));
            products.Add(new Product(3, "img/product_3.png", "Salat bơ trứng", 300000, "Salat bơ trứng"));
            products.Add(new Product(4, "img/product_4.png", "Hamburger gà", 350000, "Hamburger"));
            products.Add(new Product(5, "img/product_5.png", "Tacos", 400000, "Tacos"));
            products.Add(new Product(6, "img/product_6.png", "Cá hồi sốt cam", 450000, "Cá hồi sốt"));
            Application["product"] = products;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Cart"] = new List<Product>();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}