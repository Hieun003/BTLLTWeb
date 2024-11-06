function deleteProduct(productID) {
    var confirmDelete = confirm("Bạn có chắc muốn xóa sản phẩm đang bán này không?");
    if (confirmDelete) {
        var url = "ManageProduct.aspx?action=remove&productId=" + encodeURIComponent(productID);
        window.location.href = url;
    }
}
function addProduct() {
    // Lấy phần tử input file
    var fileInput = document.getElementById('tfile');
    var filePath = fileInput.value;

    // Danh sách các định dạng file ảnh hợp lệ
    var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;

    // Kiểm tra định dạng file
    if (!allowedExtensions.exec(filePath)) {
        alert("Chỉ được chọn file ảnh có định dạng .jpeg, .jpg, .png, .gif.");
        fileInput.value = ''; // Xóa input file
        return false;
    }
}
function updateProduct(productID) {
    var url = "ManageProduct.aspx?action=update&productId=" + encodeURIComponent(productID);
    window.location.href = url;
}


function showDialog(productID) {
    const favDialog = document.getElementById("favDialog");
    favDialog.showModal();

    const confirmBtn = favDialog.querySelector("#confirmBtn");

    // Xóa sự kiện cũ trước khi thêm lại sự kiện click
    confirmBtn.removeEventListener("click", handleConfirmClick);
    confirmBtn.addEventListener("click", handleConfirmClick);

    function handleConfirmClick(event) {
        const newPrice = favDialog.querySelector("#newPrice").value;

        if (newPrice < 0) {
            alert("Giá phải lớn hơn 0");
            newPrice = "";
            return false;
        }

        // Lấy giá trị của các trường khác
        const newName = favDialog.querySelector("#newName").value;
        const newDescribe = favDialog.querySelector("#newDescribe").value;
        const savedImageURL = localStorage.getItem('savedImage');

        //console.log(newName, newPrice, filePath, newDescribe);
        event.preventDefault(); // Ngăn không cho form submit ngay

        // Đóng dialog
        favDialog.close();

        // Chuyển hướng với các tham số đã mã hóa
        const url = `ManageProduct.aspx?action=update&productId=${encodeURIComponent(productID)}&newName=${encodeURIComponent(newName)}&newPrice=${encodeURIComponent(newPrice)}&newDescribe=${encodeURIComponent(newDescribe)}`;
        window.location.href = url;
    }
}
