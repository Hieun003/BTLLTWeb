using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (checkDangNhapServer())
                {
                    // Login successful, redirect to another page or show success message
                    Response.Redirect("HomePage.aspx");
                }
                else if (checkDangNhapAdminServer())
                {
                    Response.Redirect("HomePage.aspx");
                }
            }
        }

        public bool checkDangNhapServer()
        {
            string tenDN = Request.Form["user"];
            string mk = Request.Form["password"];

            List<Account> list = (List<Account>)Application["account"];
            foreach (Account account in list)
            {
                System.Diagnostics.Debug.WriteLine(account.Username);
                System.Diagnostics.Debug.WriteLine(account.Password);
                if ((tenDN != "admin" && account.Username == tenDN) && (mk != "admin" && account.Password == mk))
                {
                    Session["username"] = tenDN;
                    return true; // Login successful
                }
                else if (account.Username != tenDN && account.Password != mk)
                {
                    lblErrorMessage.InnerText = "Tên đăng nhập hoặc mật khẩu chưa chính xác*";
                }
            }
            return false; // Login failed
        }
        public bool checkDangNhapAdminServer()
        {
            string tenDN = Request.Form["user"];
            string mk = Request.Form["password"];
            if ((tenDN == "admin") && (mk == "admin"))
            {
                Session["username"] = tenDN;
                return true; 
            }
            return false;
        }

    }
}


