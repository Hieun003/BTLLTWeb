<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="BTLWeb.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/dnhap_dky.css">
</head>
<body>
    <header>
        <h2 class="logo">Logo</h2>
        <nav class="navigation">
            <a href="HomePage.aspx">Trang chủ</a>
            <a href="#">Sản phẩm</a>
            <a href="#">Liên hệ</a>
            <button class="btnLogin" id="btnLogin">Đăng nhập</button>
        </nav>
    </header>
    <div class="wrapper" id="wrapper">
         <img id="exit"src="img/images.png" alt="exit" style="width:24px">
        <div class="form_box_Login">
            <h2>Login</h2>
            <form id="form1" runat="server" method="post" onsubmit="return checkDangNhap(event)" action="">
                <div class="input-box">
                 <label for="user">Tên đăng nhập</label>
                 <br>
                 <input type="text" id="user" value="" name="user" runat="server" required>
             </div>
             <div class="input-box">
                 <label for="password">Mật khẩu</label>
                 <br>
                 <input type="password" id="password" value="" name="password" required>
                 <p id="lblErrorMessage" name="lblErrorMessage" runat="server">ㅤ</p>
             </div>
             
             <input class="Login" type="submit" value="Đăng nhập"></input>
             <p>Bạn chưa có tài khoản? <a href="dangky.aspx" class="register-link" id="register-link">Đăng ký</a></p>
            </form>
        </div>
     </div>
    <script src="./JS/dangnhap.js"></script>
</body>
</html>
