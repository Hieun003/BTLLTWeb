var exit = document.getElementById("exit");
var wrapper = document.getElementById("wrapper");
var lblErrorMessage = document.getElementById("lblErrorMessage");
lblErrorMessage.innerHTML = "";
exit.addEventListener('click', () => {
    wrapper.style.display = "none";
})
function checkDangKy() {
    var tenDN = document.getElementById("userName");
    var mk = document.getElementById("pass");
    var nhaplaimk = document.getElementById("ConfirmPassword");
    var lblErrorMessage = document.getElementById("lblErrorMessage");

    if (!tenDN.value || !mk.value || !nhaplaimk.value) {
        lblErrorMessage.innerHTML = "Hãy nhập đầy đủ thông tin*";
        if (!nhaplaimk.value) {
            nhaplaimk.focus();
        }
        if (!mk.value) {
            mk.focus();
        }
        if (!tenDN.value) {
            tenDN.focus();
        }
        return false;
    }
    if (nhaplaimk.value != mk.value) {
        lblErrorMessage.innerHTML = "Mật khẩu nhập lại không đúng*";
        return false;
    }
    return true;
}