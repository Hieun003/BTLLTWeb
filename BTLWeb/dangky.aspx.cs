using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (checkDangKyServer())
            {
                if (IsPostBack)
                {
                    lblErrorMessage.InnerHtml = "";
                    Response.Redirect("dangnhap.aspx");
                }
            }
        }

        public bool checkDangKyServer()
        {
            var tenDN = Request.Form["user"];
            var mk = Request.Form["password"];
            List<Account> list = (List<Account>)Application["account"];
            foreach (Account account in list)
            {
                if (account.Username == tenDN)
                {
                    //lblErrorMessage.InnerHtml = "Tên đăng nhập đã tồn tại*";
                    return false;
                }
            }
            Account tmp = new Account();
            tmp.Username = tenDN;
            tmp.Password = mk;
            list.Add(tmp);
            Application["account"] = list;
            list = (List<Account>)Application["account"];
            foreach(Account acc in list)
            {

                System.Diagnostics.Debug.WriteLine(acc.Username);
                System.Diagnostics.Debug.WriteLine(acc.Password);
            }
            return true;
        }
    }
}