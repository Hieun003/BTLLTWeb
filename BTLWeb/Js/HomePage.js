var account = document.getElementById("tk");
var title_account = document.getElementById("list_acc");
var admin = document.getElementById("admin");
var accountElement = document.getElementById("myaccount");
var Logout = document.getElementById("dangxuat");
account.onclick = function () {
    title_account.classList.toggle("none");
}
function Addtocart(productID, productImg, productName, productPrice,productDecription) {
    var url = "AddToCart.aspx?action=update"
        + "&productId=" + encodeURIComponent(productID)
        + "&productImg=" + encodeURIComponent(productImg)
        + "&productName=" + encodeURIComponent(productName)
        + "&productPrice=" + encodeURIComponent(productPrice)
        + "&productDescription" + encodeURIComponent(productDecription);
    window.location.href = url;
}
if (accountElement.innerText.trim() != "admin") {
    admin.style.display = "none";
}

