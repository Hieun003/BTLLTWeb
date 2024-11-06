using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Product> ds = (List<Product>)Application["product"];
            if (ds == null)
            {
                ds = new List<Product>(); 
            }
            string chuoi = "<div id=\"list - products\">";
            foreach (Product product in ds)
            {
                chuoi += "<div class=\"item\" data-product-id="+ product.Id + ">";
                chuoi += "<img src=\"" + product.Img + "\" alt="+product.Description + ">";
                chuoi += "<div class=\"name\">" + product.Name + "</div>";
                chuoi += "<div class=\"desc\">" + product.Description+"</div>";
                chuoi += "<div class=\"price\">" + product.Price +"</div>";
                chuoi += "<button onclick=\"Addtocart(" + product.Id + ", '" + product.Img + "', '" + product.Name + "', " + product.Price + ", '" + product.Description + "')\">Thêm</button>";
                chuoi += "</div>";
            }
            chuoi += "</div>";
            hienthidanhsach.InnerHtml = chuoi;
        }
    }
}