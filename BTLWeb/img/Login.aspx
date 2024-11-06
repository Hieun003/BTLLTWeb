

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title><link rel="stylesheet" href="css/Login_Register.css" /></head>
<body>
     <header>
     <img src="img/logo.png" />
     <nav class="navigation">
         <a href="HomePage.aspx">Trang chủ</a>
         <a href="#">Sản phẩm</a>
         <a href="#">Liên hệ</a>
         <button class="btnLogin" id="btnLogin">Đăng nhập</button>
     </nav>
 </header>
 <div class="wrapper" id="wrapper">
      <img id="exit"src="img/images.png" alt="">
     <div class="form_box_Login">
         <h2>Login</h2>
         <form method="post" action="./Login.aspx" id="form1" onsubmit="return checkDangNhap(event)">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="6zMReUIleImGuN/9fAhJKBkb9uR1gen5ZpFTOU0hv+mZXuYM4w3v4OSxebB4RGdLSo4ymoE9nDii6DJjYFjSAadJEznOEvsCiNDLbU18A14=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C2EE9ABB" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="VynjxrKgWeuWVmG59kPorJoz1xqTYk2HZ9DCXoMa4vyISMNjaRco2G+8D9GAnkSUnEA3q21lAD6o/TRnGivFqO/oDf/tuYv6Am2LumIWqSCP/VTl5sE9KeoycD6SJb2s" />
</div>
             <div class="input-box">
                 <label for="user">Tên đăng nhập</label>
                 <br>
                 <input name="user" type="text" id="user" />
             </div>
             <div class="input-box">
                 <label for="password">Mật khẩu</label>
                 <br>
                 <input type="password" id="password" value="" name="password">
             </div>
             <p id="lblErrorMessage" name="lblErrorMessage">ㅤ</p>
             <input class="Login" type="submit" value="Đăng nhập"></input>
             <p>Bạn chưa có tài khoản? <a href="Register.aspx" class="register-link" id="register-link">Đăng ký</a></p>
         </form>
     </div>
  </div>
    <script src="js/Login.js" />
</body>
</html>
