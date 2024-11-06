var exit = document.getElementById("exit");
var wrapper = document.getElementById("wrapper");
var btnLogin = document.getElementById("btnLogin")
exit.addEventListener('click', ()=> {
    wrapper.style.display = "none";
})
btnLogin.addEventListener('click', () => {
    wrapper.style.display = "flex";
})
function checkDangNhap(event) {
    var tenDN = document.getElementById("user");
    var mk = document.getElementById("password");
    var lblErrorMessage = document.getElementById("lblErrorMessage");
    if (!tenDN.value || !mk.value) {
        lblErrorMessage.innerHTML = "Thông tin không được để trống*";
        if (!mk.value) {
            mk.focus();
        }
        if (!tenDN.value) {
            tenDN.focus();
        }
        return false;
    }
    return true;
}