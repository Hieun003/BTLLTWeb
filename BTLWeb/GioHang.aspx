<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BTLWeb.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/gioHang.css" rel="stylesheet"/>
    <link href="CSS/Footer.css" rel="stylesheet"/>
    <link href="CSS/Menu.css" rel="stylesheet"/>
</head>
<body>
    <div id="header"> 
        <a href="HomePage.aspx" class="logo">
            <img src="img/logo.png" alt="logo"/>
        </a>
        <div id="menu">
            <div class="item">
                <a href="HomePage.aspx">Trang chủ</a>
            </div>
            <div class="item">
                <a href="HomePage.aspx">Sản phẩm</a>
            </div>
            <div class="item">
                <a href="#footer">Liên hệ</a>
            </div>
        </div>
        <div id="actions">
            <div class="item" id="iteam">
                
                <img src="img/user.png" alt="" id="tk" style="width:24px"/>
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
                <img src="img/cart.png" alt=""/>
            </div>
        </div>
    </div>
    <div id="hang">
        <div class="gio_hang">
            <h1>Danh sách sản phẩm</h1>
            <div id="hienthidanhsach" runat="server">
        </div>
    </div>
    <div class="capnhat">
        <button value="capnhapsp" onclick="updateTotal();">Cập nhật</button>
        <a href="HomePage.aspx">Tiếp tục mua sắm</a>
    </div>
    <div class="tongtien">
        <div class="tong">
            <h2>Tổng tiển</h2>
                <table cellspacing="0" class="shoptotalprice">
                    <tr class="total">
                        <th>Tổng tiền</th>
                        <td ><span id="totalPrice">0 VND</span></td>
                    </tr>
                </table>
        </div>

    </div>
    <div class="checkout">
        <a href="ThanhToanThanhCong.html">Mua hàng</a>
    </div>
</div>
    <div class="footer" id="footer">
        <div class="box">
            <img src="img/logo.png" alt=""/>
            <p>Cung cấp sản phẩm với chất lượng an toàn cho quý khách</p>
        </div>
    <div class="box">
        <h3>NỘI DUNG</h3>
        <ul class="quick-mneu">
            <div class="item">
                <a href="#">Trang chủ</a>
            </div>
            <div class="item">
                <a href="#">Sản phẩm</a>
            </div>
            <div class="item">
                <a href="#">Blog</a>
            </div>
            <div class="item">
                <a href="#">Liên hệ</a>
            </div>
        </ul>
    </div>
    <div class="box">
        <h3>LIÊN HỆ</h3>
        <p>Foodgo2158@gmail.com</p>
        <p>09857469821</p>
    </div>
    </div>
    <script type="text/javascript" src="Js/GioHang.js"></script>
    <script src="Js/HomePage.js"></script>
</body>
</html>
