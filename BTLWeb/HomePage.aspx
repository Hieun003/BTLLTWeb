<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BTLWeb.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/HomePage.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                </form>
    <div id="wrapper">
        <div id="header"> 
            <a href="HomePage.aspx" class="logo">
                <img src="../img/logo.png" alt="logo">
            </a>
            <div id="menu">
                <div class="item">
                    <a href="HomePage.aspx">Trang chủ</a>
                </div>
                <div class="item">
                    <a href="#wp-products">Sản phẩm</a>
                </div>
                <div class="item">
                    <a href="#footer">Liên hệ</a>
                </div>
                 <div class="item" id="admin">
                    <a href="Administrator.aspx">Quản trị</a>
                </div>
            </div>
            <div id="actions">
                <div class="item">
                    
                    <img src="../img/user.png" alt="" id="tk" style="width:24px">
                    <ul id="list_acc" class="list_acc">
                        <li class="title_account">
                            <p id="myaccount" name="myaccount" runat="server">
                                  <% if (Session["username"] != null) { %>
                                <%= Session["username"].ToString() %>
                                <% } else { %>
                                   <% } %>
                            </p>
                        </li> 
                        <li class="title_account" id="dangxuat">
                            <% if (Session["username"] != null) { %>
                            <a href="Dangxuat.aspx">Đăng xuất</a>
                            <% } else { %>
                            <a href="dangnhap.aspx">Đăng nhập</a>
                            <% } %>
                        </li>
                 </ul>
                </div>
                <div class="item">
                    <a href="GioHang.aspx">
                        <img src="../img/cart.png" alt="giỏ hàng">
                    </a>
                </div>
            </div>
        </div>
        <div id="banner">
            <div class="box-left">
                <h2>
                    <span>THỨC ĂN</span>
                    <br>
                    <span>THƯỢNG HẠNG</span>
                </h2>
                <p>Chuyên cung cấp các món ăn đảm bảo dinh dưỡng hợp vệ sinh đến người dùng, 
                    phục vụ người dùng 1 cách hoàn hảo nhất</p>
            </div>
            <div class="box-right">
                <img src="../img/img_1.png" alt="món 1">
                <img src="../img/img_2.png" alt="món 2">
                <img src="../img/img_3.png" alt="món 3">
            </div>
            <div class="to-bottom">
                <a href="#wp-products">
                    <img src="img/to_bottom.png" alt="to-bottom">
                </a>
            </div>
        </div>
        <div id="wp-products">
            <h2>SẢN PHẨM CỦA CHÚNG TÔI</h2>
            <div id="hienthidanhsach" runat="server">
             </div>
        </div>
        <div class="footer" id="footer">
            <div class="box">
                <img src="../img/logo.png" alt="">
                <p>Cung cấp sản phẩm với chất lượng an toàn cho quý khách</p>
            </div>
        <div class="box">
            <h3>NỘI DUNG</h3>
            <ul class="quick-mneu">
                <div class="item">
                    <a href="">Trang chủ</a>
                </div>
                <div class="item">
                    <a href="">Sản phẩm</a>
                </div>
                <div class="item">
                    <a href="">Blog</a>
                </div>
                <div class="item">
                    <a href="">Liên hệ</a>
                </div>
            </ul>
        </div>
        <div class="box">
            <h3>LIÊN HỆ</h3>
            <p>Foodgo2158@gmail.com</p>
        </div>
    </div>
    </div>
    <script type="text/javascript" src="Js/HomePage.js" ></script>
</body>

</html>
