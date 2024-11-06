using BTLWeb.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWeb
{
    public partial class XoaSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> cart = Session["Cart"] as List<Product>;
            if (Request.QueryString["action"] == "remove" && !IsPostBack)
            {
                int productId = Convert.ToInt32(Request.QueryString["productId"]);

                if (cart != null)
                {
                    var itemToRemove = cart.FirstOrDefault(item => item.Id == productId);
                    if (itemToRemove != null)
                    {
                        cart.Remove(itemToRemove);

                        Session["Cart"] = cart;
                    }

                    Response.Redirect("GioHang.aspx");
                }
            }
            if (Request.QueryString["action"] == "update" && !IsPostBack)
            {
                int productId = Convert.ToInt32(Request.QueryString["productId"]);
                int quantityStr = Convert.ToInt32(Request.QueryString["quantity"]);
                var itemUpdate = cart.FirstOrDefault(item => item.Id == productId);
                if (itemUpdate != null)
                {
                    itemUpdate.Quantity = quantityStr;
                }
                Session["Cart"] = cart;
                Response.Redirect("GioHang.aspx");
            }
        }
    }
}