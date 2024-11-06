

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title><link href="CSS/gioHang.css" rel="stylesheet" /><link href="CSS/HomePage.css" rel="stylesheet" /></head>
<body>
    <div id="header"> 
        <a href="index.html" class="logo">
            <img src="img/logo.png" alt="logo"/>
        </a>
        <div id="menu">
            <div class="item">
                <a href="index.html">Trang chủ</a>
            </div>
            <div class="item">
                <a href="#wp-products">Sản phẩm</a>
            </div>
            <div class="item">
                <a href="#footer">Liên hệ</a>
            </div>
        </div>
        <div id="actions">
            <div class="item" id="iteam">
                
                <img src="img/user.png" alt="" id="tk"/>
                <ul id="list_acc" class="list_acc">
                    <li class="title_account">
                        <p>
                            Tài khoản của tôi
                        </p>
                    </li> 
                    <li class="title_account">
                        <a style="text-decoration:none" href="../html/login.html">
                            Đăng xuất
                        </a>
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
            <div id="hienthidanhsach"><table border='1' style='margin: 0 auto;border-collapse: collapse; width: 100%;'><tr><th>Sản Phẩm</th><th>Đơn Giá</th><th >Số Lượng</th><th>Số Tiền</th><th>Thao Tác</th></tr><tbody><tr id=row_1><td><input type="checkbox" id="check1" class="product-checkbox" style="margin-right: 30px;"/><img src=../img/product_1.png alt="Item" id="Imgitem"/><p class="ten" style="margin - left: 20px; ">Nem rán</p> </td><td ><span class="gia" id="gia1">50000 VND </span></td><td ><input type="number" class="soluong" id="soluong" value=1 style="margin: 20px; "onchange="updateQuantity(1,this.value)" /></td><td><p class="thanhtien" id="tt">50000 VND</p></td><td><button onclick="removeProduct(1)">Xóa</button></td></tr><tr id=row_2><td><input type="checkbox" id="check1" class="product-checkbox" style="margin-right: 30px;"/><img src=../img/product_2.png alt="Item" id="Imgitem"/><p class="ten" style="margin - left: 20px; ">Trứng lòng đào</p> </td><td ><span class="gia" id="gia1">30000 VND </span></td><td ><input type="number" class="soluong" id="soluong" value=1 style="margin: 20px; "onchange="updateQuantity(2,this.value)" /></td><td><p class="thanhtien" id="tt">30000 VND</p></td><td><button onclick="removeProduct(2)">Xóa</button></td></tr></tbody></table></div>
    </div>
    <div class="capnhat">
        <button value="capnhapsp" onclick="updateTotal();">Cap nhat</button>
        <button value="capnhapsp">Tiep tuc mua sam</button>
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
        <a href="#">Mua hàng</a>
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
