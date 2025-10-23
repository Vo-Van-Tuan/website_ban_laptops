<style>
    .reviews {
        float: left;
        width: 100%;
        margin: 10px;
        background: #F4F5F6;
        border-radius: 15px;
        border: 1px solid rgba(0, 0, 0, .125);
        overflow: hidden;
        /* Ngăn chặn nội dung bị tràn ra ngoài */
        transition: height 0.3s ease;
        /* Hiệu ứng chuyển động cho việc thay đổi chiều cao */
    }

    .reviews-title {
        text-align: center;
        margin-top: 10px;
        padding: .75rem 1.25rem;
        margin-bottom: 0;
        background-color: rgba(0, 0, 0, .03);
        border-bottom: 1px solid rgba(0, 0, 0, .125);
    }

    .product_details_content {
        padding: 10px;
    }

    .expand-button {
        display: block;
        margin: 10px auto;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        /* Màu nền mờ */
        display: none;
        justify-content: center;
        align-items: center;
        z-index: 999;
    }

    /* Styling for popup content */
    .popup {
        background-color: #fff;
        padding: 20px;
        max-width: 80%;
        max-height: 80%;
        overflow-y: auto;
        /* Cho phép cuộn nếu nội dung quá dài */
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }

    /* Styling for close button */
    .close-btn {
        position: absolute;
        top: 10px;
        right: 10px;
        cursor: pointer;
    }
</style>
@if (!empty($product->pro_description))
<div>


    <div class="reviews content_text" style="height: 400px;">
        <div>
            <h4 class="reviews-title">
                <b class="product_details_title">Thông Số Kỹ Thuật</b>
            </h4>
            <div class="product_details_content">
                {!! $product->pro_description !!}
            </div>
        </div>
        
    </div><button style=" position: relative; left: 100px; " class="btn btn-purple" onclick="openPopup()">Xem chi tiết sản
            phẩm</button>
</div>
    <div class="overlay" id="overlay">
        <div class="popup">
            <h2>Thông số kỹ thuật của <b>{!! $product->pro_name !!}</b></h2>
            <div class="product_details_content">
                {!! $product->pro_description !!}
            </div>
            <button class="btn btn-purple" onclick="closePopup()">Đóng</button>
        </div>
    </div>
@endif
<script>
    function openPopup() {
        var overlay = document.getElementById('overlay');
        overlay.style.display = 'flex'; // Hiển thị overlay
    }

    function closePopup() {
        var overlay = document.getElementById('overlay');
        overlay.style.display = 'none'; // Đóng popup
    }
</script>