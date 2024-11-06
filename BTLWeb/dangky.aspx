<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="BTLWeb.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="CSS/dnhap_dky.css">
</head>
<body>
    <header>
        <h2 class="logo">Logo</h2>
        <nav class="navigation">
             <a href="HomePage.aspx">Trang chủ</a>
            <a href="HomePage.aspx">Sản phẩm</a>
            <a href="HomePage.aspx">Liên hệ</a>
            <button class="btnLogin" id="btnLogin">Đăng nhập</button>
        </nav>
    </header>
    <div class="wrapper" id="wrapper">
        <img id="exit" src="img/images.png" alt="" style="width:24px">
        <div class="form_box_Register" id="form_box_Register">
            <h2>Register</h2>
            <form method="post" runat="server" onsubmit="return checkDangKy()" >
                <div class="input-box">
                    <label for="name">Họ tên</label>
                    <br>
                    <input type="text" id="name" value="" name="name" required>
                </div>
                <div class="input-box">
                    <label for="user">Tên đăng nhập</label>
                    <br>
                    <input type="text" id="userName" value name="user" required>
                </div>
                <div class="input-box">
                    <label for="password">Mật khẩu</label>
                    <br>
                    <input type="password" id="pass" value name="password" required>
                </div>  
                <div class="input-box">
                    <label for="ConfirmPassword">Nhập lại mật khẩu</label>
                    <br>
                    <input type="password" id="ConfirmPassword" value="" name="ConfirmPassword" required>
                    <p id="lblErrorMessage" name="lblErrorMessage" runat="server">ㅤ</p>

                </div>
               <input id="Register" class="Register" type="submit" value="Đăng ký"></input>
                <p>Bạn đã có tài khoản? <a href="dangnhap.aspx" class="login-link" id="login-link">Đăng nhập</a></p>
            </form>
        </div>
        <script src="JS/dangky.js"></script>
 </div>
</body>
</html>
