using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class Dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon(); // Xóa dữ liệu trong Session
            Response.Redirect("dangnhap.aspx"); // Chuyển hướng về trang đăng nhập
        }
    }
}