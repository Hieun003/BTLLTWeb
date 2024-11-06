using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ds = (List<Product>)Session["Cart"];
            if (ds == null)
            {
                ds = new List<Product>(); // Nếu giỏ hàng rỗng thì khởi tạo một danh sách mới
            }
            string chuoi = "<table border='1' style='margin: 0 auto;border-collapse: collapse; width: 100%;'>";
            chuoi += "<tr>";
            chuoi += "<th>Sản Phẩm</th>";
            chuoi += "<th>Đơn Giá</th>";
            chuoi += "<th >Số Lượng</th>";
            chuoi += "<th>Số Tiền</th>";
            chuoi += "<th>Thao Tác</th>";
            chuoi += "</tr>";
            chuoi += "<tbody>";
            foreach (Product cartItem in ds)
            {
                chuoi += "<tr id=row_"+cartItem.Id+">";
                chuoi += "<td><input type=\"checkbox\" id=\"check1\" class=\"product-checkbox\" style=\"margin-right: 30px;\"/><img src=" + cartItem.Img+ " alt=\"Item\" id=\"Imgitem\"/><p class=\"ten\" style=\"margin - left: 20px; \">" + cartItem.Name + "</p> </td>";
                chuoi += "<td ><span class=\"gia\" id=\"gia1\">" + cartItem.Price + " VND </span></td>";
                chuoi += "<td ><input type=\"number\" class=\"soluong\" id=\"soluong\" value=" + cartItem.Quantity+ " style=\"margin: 20px; \"onchange=\"updateQuantity(" + cartItem.Id +",this.value)\" /></td>";
                chuoi += "<td><p class=\"thanhtien\" id=\"tt\">"+cartItem.TotalPrice + " VND</p></td>";
                chuoi += "<td><button onclick=\"removeProduct(" + cartItem.Id + ")\">Xóa</button></td>";
                chuoi += "</tr>";
            }
            chuoi += "</tbody>";
            chuoi += "</table>";
            hienthidanhsach.InnerHtml = chuoi;
        }
    }
}