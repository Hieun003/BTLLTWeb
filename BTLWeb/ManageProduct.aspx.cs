using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> pro = Application["product"] as List<Product>;
            int productId = Convert.ToInt32(Request.QueryString["productId"]);
            if (Request.QueryString["action"] == "remove" && !IsPostBack)
            {
                if (pro != null)
                {
                    var itemToRemove = pro.FirstOrDefault(item => item.Id == productId);
                    if (itemToRemove != null)
                    {
                        pro.Remove(itemToRemove);
                        Application["product"] = pro;
                    }

                    Response.Redirect("Administrator.aspx");
                }
            }
            if (Request.QueryString["action"] == "update" && !IsPostBack)
            {
                //todo
                string newName = Request.QueryString["newName"];
                string newPrice = Request.QueryString["newPrice"];
                string newDescribe = Request.QueryString["newDescribe"];

                foreach (Product product in pro)
                {
                    if (product.Id == productId)
                    {
                        if (newName != "")
                        {
                            product.Name = newName;
                        }
                        if (newPrice != "")
                        {
                            product.Price = decimal.Parse(newPrice);
                        }
                        if (newDescribe != "")
                        {
                            product.Description = newDescribe;
                        }
                    }
                }
                Application["product"] = pro;
                Response.Redirect("Administrator.aspx");
            }
        }
    }
}