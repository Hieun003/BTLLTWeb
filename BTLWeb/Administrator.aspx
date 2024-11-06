<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="BTLWeb.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/Administrator.css" />
</head>
<body>
    <header>
        <a href="HomePage.aspx" class="logo">
                <img src="../img/logo.png" alt="logo">
            </a>
        <nav class="navigation">
            <div class="action" id="action">
                <div>
                    <img src="img/user.png" alt="" />
                    <span>Admin</span>
                </div>
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
        </nav>
    </header>
    <h3 class="addProduct">Thêm sản phẩm mới</h3>
    <form method="post" enctype="multipart/form-data" runat="server" onsubmit="return addProduct();" action="Administrator.aspx">
        <div class="inputIn4" id="inputIn4">
            <div class="container_name">
                <p>Tên sản phẩm</p>
                <input type="text" class="name" id="name" runat="server" required />
            </div>
            <div class="container_img">
                <p>Hình ảnh</p>
                <input type="file" class="tfile" id="tfile" runat="server" required />
            </div>
            <div class="container_price">
                <p>Giá</p>
                <input type="number" class="price" id="price" runat="server" required />
            </div>
            <div class="container_describe">
                <p>Giới thiệu về sản phẩm</p>
                <textarea name="describe" runat="server" id="describe"></textarea>
            </div>
            <button type="submit">Thêm sản phẩm</button>
        </div>
    </form>
    <div class="product" id="product">
        <h3>Sản phẩm hiện đang được bày bán trên trang:</h3>

        <div class="productItem" id="productItem" runat="server">
        </div>
    </div>


    <!-- Modal for Editing Product -->
    <!-- A modal dialog containing a form -->
    <dialog id="favDialog">
        <form>
            <h3>Sửa sản phẩm</h3>
            <div class="dialog_content">
                <div class="dialog_container_name">
                    <p>Tên sản phẩm</p>
                    <input type="text" class="newName" id="newName" runat="server" />
                </div>
                <div class="dialog_container_price">
                    <p>Giá</p>
                    <input type="number" class="newPrice" id="newPrice" runat="server" />
                </div>
                <div class="dialog_container_describe">
                    <p>Giới thiệu về sản phẩm</p>
                    <textarea name="newDescribe" runat="server" id="newDescribe"></textarea>
                </div>
            </div>
            <div class="dialog_button">
                <button value="cancel" formmethod="dialog">Hủy</button>
                <button id="confirmBtn" value="default">Xác nhận</button>
            </div>
        </form>
    </dialog>

    <script src="js/Administrator.js"></script>
</body>
</html>
