using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["action"] == "update" && !IsPostBack)
            {
                int productID = int.Parse(Request.QueryString["productID"]);
                string productName = Request.QueryString["productName"];
                string productImg = Request.QueryString["productImg"];
                decimal productPrice = decimal.Parse(Request.QueryString["productPrice"]);
                string productDescription = Request.QueryString["productDescription"];

                Product product = new Product(productID, productImg,productName,productPrice,productDescription);

                AddtoCart(product);
                Response.Redirect("Homepage.aspx");
            }
        }
        public void AddtoCart(Product product)
        {
            List<Product> cart;

            // Kiểm tra nếu giỏ hàng đã tồn tại trong session hay chưa
            if (Session["Cart"] == null)
            {
                // Nếu chưa, khởi tạo giỏ hàng mới
                cart = new List<Product>();
            }
            else
            {
                cart = (List<Product>)Session["Cart"];
            }

            // Kiểm tra sản phẩm đã có trong giỏ hàng chưa
            var existingProduct = cart.FirstOrDefault(p => p.Id == product.Id);
            if (existingProduct != null)
            {
                // Nếu có, tăng số lượng
                existingProduct.Quantity += product.Quantity;
            }
            else
            {
                // Nếu chưa, thêm sản phẩm vào giỏ hàng
                cart.Add(product);
            }

            // Cập nhật lại giỏ hàng trong session
            Session["Cart"] = cart;
        }
    }
}