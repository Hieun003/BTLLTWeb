using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Application["product"] == null)
                    {
                        Application["product"] = new List<Product>();
                    }
                    LoadProducts();
                }
                else
                {
                    string tensp = Request.Form["name"];
                    string gia = Request.Form["price"];
                    string mota = Request.Form["describe"];

                    var file = Request.Files["tfile"];

                    if (file != null)
                    {
                        string path = Server.MapPath("~/img/");
                        if (!Directory.Exists(path))
                        {
                            Directory.CreateDirectory(path);
                        }

                        string fileName = Path.GetFileName(file.FileName);
                        string relativePath = "img/" + fileName;
                        string filePath = Path.Combine(path, fileName);
                        file.SaveAs(filePath);

                        if (decimal.TryParse(gia, out decimal parsedPrice) && !string.IsNullOrEmpty(tensp))
                        {
                            var products = (List<Product>)Application["product"];
                            products.Add(new Product(products.Count, relativePath, tensp, parsedPrice, mota));
                            Application["product"] = products;
                        }

                        LoadProducts();
                    }
                }
            }
            catch (Exception ex)
            {
                // Ghi log hoặc xử lý lỗi
                Response.Write("Error: " + ex.Message);
            }
        }
        private void LoadProducts()
        {
            string chuoi = "";
            List<Product> products = (List<Product>)Application["product"];
            foreach (Product product in products)
            {
                chuoi += $"<div class=\"item\" id=\"item\">" +
                        $"<img src=\"{product.Img}\" alt=\"\" />" +
                        $"<img src=\"img/pen.png\" alt=\"\" onclick=\"showDialog({product.Id})\" />" +
                        $"<p>{product.Name}</p>" +
                        $"<p>{product.Price}<span> VND<span></p>" +
                        $"<img src=\"img/trashbin.png\" alt=\"\" onclick=\"deleteProduct({product.Id})\" />" +
                    "</div>";
            }
            productItem.InnerHtml = chuoi;
        }
    }
}