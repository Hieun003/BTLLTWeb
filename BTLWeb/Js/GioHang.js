function updateTotal() {

    const rows = document.querySelectorAll("tbody tr");
    let totalPrice = 0;

    rows.forEach(row => {
        const checkbox = row.querySelector(".product-checkbox");
        const quantityInput = row.querySelector(".soluong");
        const priceSpan = row.querySelector(".gia");
        const totalSpan = row.querySelector(".thanhtien");

        if (checkbox && quantityInput && priceSpan && totalSpan) {
            const price = parseInt(priceSpan.textContent.replace(" VND", ""));
            const quantity = parseInt(quantityInput.value);

            const itemTotal = price * quantity;
            totalSpan.textContent = itemTotal + " VND";

            if (checkbox.checked) {
                totalPrice += itemTotal;
            }
        }
    });
    document.getElementById("totalPrice").textContent = totalPrice + " VND";
}
function removeProduct(productID) {
    var confirmDelete = confirm("Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?");
    if (confirmDelete) {
        var url = "XoaSP.aspx?action=remove&productId=" + encodeURIComponent(productID);

        window.location.href = url;
    }
}
function updateQuantity(productID, newQuantity) {
    var url = "XoaSP.aspx?action=update&productId=" + encodeURIComponent(productID) + "&quantity=" + encodeURIComponent(newQuantity);
    window.location.href = url;
}

