<style>
    /* CSS for the popup container */
    .popup-container {
        display: none;
        /* Initially hidden */
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        /* Semi-transparent black background */
        z-index: 9999;
        /* Ensure popup is on top */
    }

    /* CSS for the popup content */
    .popup-content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: white;
        padding: 20px;
        text-align: center;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    /* Close button style */
    .close-btn {
        position: absolute;
        top: 10px;
        right: 15px;
        font-size: 20px;
        cursor: pointer;
    }

    /* Optional: Button style to trigger the popup */
    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        margin-top: 20px;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
<div class="modal-body cart">
    <div class="left" style="width: 100%;">
        <div class="list">
            <div class="list__content">
                <p id="courses_id">WEBLT001</p>
                <table class="table">
                    <thead>
                        <tr>
                            <th style="width: 100px;">Hình ảnh</th>
                            <th style="width: 30%">Sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($shopping as $key => $item)
                            <tr>
                                <td>
                                    <a id="pro_name"
                                        href="{{ route('get.product.detail', \Str::slug($item->name) . '-' . $item->id) }}"
                                        title="{{ $item->name }}" class="avatar image contain">
                                        <img alt="" src="{{ pare_url_file($item->options->image) }}" class="lazyload">
                                    </a>
                                </td>
                                <td>
                                    <a
                                        href="{{ route('get.product.detail', \Str::slug($item->name) . '-' . $item->id) }}"><strong>{{ $item->name }}</strong></a>
                                </td>
                                <td>
                                    <p>
                                        <span><b>{{ number_format($item->price, 0, ',', '.') }}
                                                đ</b></span>
                                        <br>
                                        @if ($item->options->price_old)
                                            <span class="sale">Giảm: <b> {{ $item->options->sale }}
                                                    %</b></span>
                                            <br>
                                            <span
                                                style="text-decoration: line-through;">{{ number_format(number_price($item->options->price_old), 0, ',', '.') }}đ</span>
                                        @endif
                                    </p>
                                </td>
                                <td>
                                    <div class="qty_number">
                                        <input type="number" min="1" class="input_quantity" name="quantity_14692"
                                            value="{{ $item->qty }}" id="" disabled>
                                        <p data-price="{{ $item->price }}"
                                            data-url="{{ route('ajax_get.shopping.update', $key) }}"
                                            data-id-product="{{ $item->id }}">
                                            <span class="js-increase">+</span>
                                            <span class="js-reduction">-</span>
                                        </p>
                                        <a href="{{ route('get.shopping.delete', $key) }}"
                                            class="js-delete-item btn-action-delete">
                                            <i class="la la-trash"></i>
                                        </a>
                                    </div>
                                </td>
                                <td>
                                    <span
                                        class="js-total-item">{{ number_format($item->price * $item->qty, 0, ',', '.') }}VNĐ</span>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <p id="price" style="float: right;margin-top: 20px;">Tổng tiền : <b
                        id="sub-total">{{ \Cart::subtotal(0)}}</b><b>VNĐ</b>
                </p>
            </div>
        </div>
    </div>
</div>
<div class="modal-body cart">
    <div class="right">
        <div class="customer">
            <div class="title">THÔNG TIN ĐẶT HÀNG</div>
            <div class="customer__content">
                <form class="from_cart_register" action="{{ route('post.shopping.pay') }}" method="post"
                    id="thanh_toan">
                    @csrf
                    <div class="form-group" style=" margin: 0px; ">
                        <label for="name">Họ và tên <span class="cRed">(*)</span></label>
                        <input name="tst_name" id="name" required="" value="{{ get_data_user('web', 'name') }}"
                            type="text" class="form-control">
                    </div>
                    <div class="form-group" style=" margin: 0px; ">
                        <label for="phone">Điện thoại <span class="cRed">(*)</span></label>
                        <input name="tst_phone" id="phone" required="" value="{{ get_data_user('web', 'phone') }}"
                            type="text" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="address">Tỉnh thành <span class="cRed">(*)</span></label>
                        <input name="SProvince" id="address" required="" value="" type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="address">Quận huyện <span class="cRed">(*)</span></label>
                        <input name="SDistrict" id="address" required="" value="" type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="address">Phường xã <span class="cRed">(*)</span></label>
                        <input name="SWard" id="address" required="" value="" type="text" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="address">Địa chỉ chi tiết <span class="cRed">(*)</span></label>
                        <input name="SDis" id="address" required="" value="{{ get_data_user('web', 'address') }}"
                            type="text" class="form-control">
                    </div>
                    <div class="form-group" style=" margin: 0px; ">
                        <label for="email">Email <span class="cRed">(*)</span></label>
                        <input name="tst_email" id="email" required="" value="{{ get_data_user('web', 'email') }}"
                            type="text" value="" class="form-control">
                    </div>
                    <div class="form-group" style=" margin: 0px; ">
                        <label for="note">Ghi chú thêm</label>
                        <textarea name="tst_note" id="note" cols="3" style="min-height: 100px;" rows="2"
                            class="form-control"></textarea>
                    </div>
                    <div class="title">Chọn hình thức thanh toán.</div>
                    <div class="btn-buy">
                        <button class="buy1 btn btn-purple {{ \Auth::id() ? '' : 'js-show-login' }}" style="width: 100%"
                            type="submit" name="pay" value="online">
                            Thanh toán bằng tiền mặt
                        </button>
                        <button class="buy1 btn btn-primary {{ \Auth::id() ? '' : 'js-show-login' }}"
                            style="width: 100%;margin-top: 20px" type="submit" name="pay" value="transfer">
                            Thanh toán Vnpay
                        </button>
                        <button class="buy1 btn btn-purple {{ \Auth::id() ? '' : 'js-show-login' }}" style="width: 100%"
                            type="submit" name="pay" value="online" id="vietqr">
                            Thanh toán chuyển khoản
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="popupContainer" class="popup-container">
    <div class="popup-content">
        <span class="close-btn" onclick="closePopup()">&times;</span>
        <img id="img-pay" alt="Popup Image">
    </div>
</div>

<script>
    function closePopup() {
        var popup = document.getElementById('popupContainer');
        popup.style.display = 'none'; // Ẩn popup bằng cách thay đổi thuộc tính display của nó
    }

    let str =document.getElementById('sub-total').innerHTML;
    let num = parseFloat(str.replace(/,/g, ''));
    var total = num;

    document.addEventListener('DOMContentLoaded', function () {
    var isProcessing = false;

    document.getElementById('vietqr').addEventListener('click', function (event) {
        event.preventDefault();

        if (isProcessing) {
            return;
        }

        isProcessing = true;

        var str = document.getElementById('sub-total').innerHTML;
        var num = parseFloat(str.replace(/,/g, ''));
        var total = num;

        var tiendon = total;
        var code = generateRandomNumbers().join('');
        var QR = "https://img.vietqr.io/image/Vietinbank-101882327573-compact2.png?amount=" +
            tiendon + "&addInfo=MRLAPTOP_THANHTOANDONHANG_" + code +
            "&accountName=VO HOAI LINH";
        
        var imgPay = document.getElementById('img-pay');
        imgPay.setAttribute('src', QR);

        var intervalId = setInterval(function () {
            checkpaid(code, tiendon, intervalId);
        }, 2000); // Tăng khoảng thời gian giữa các lần kiểm tra lên 2 giây (2000ms)

        document.getElementById('popupContainer').style.display = 'block';
    });

    async function checkpaid(content, price, intervalId) {
        try {
            const response = await fetch(
                "https://script.google.com/macros/s/AKfycbzG7i9sZ_i6Yih6VHVHmuEquT_fmsH1qAxxvsG33XtMwRdpr2g77VaTHm-pZQ9VjhShVA/exec"
            );
            const data = await response.json();
            const lastPaid = data.data[data.data.length - 1];
            const lastPrice = lastPaid["Giá trị"];
            const lastContent = lastPaid["Mô tả"];
            if (lastPrice >= price && lastContent.includes(content)) {
                clearInterval(intervalId);
                var form = document.getElementById('thanh_toan');
                if (form) {
                    var input = document.createElement('input');
                    input.type = 'hidden';
                    input.name = 'xacnhanthanhtoan';
                    input.value = 'true';
                    form.appendChild(input);
                    // Sử dụng setTimeout để đảm bảo rằng các thay đổi DOM được xử lý trước khi submit form
                    setTimeout(function() {
                        console.log('thanh cong'); 
                         form.submit();
                    }, 500); // Đợi 500ms trước khi submit form
                } else {
                    console.error('Không tìm thấy form để submit.');
                }
            } else {
                console.log('Chưa thanh toán thành công');
            }
        } catch (error) {
            console.error('Lỗi khi gọi API kiểm tra thanh toán:', error);
        } finally {
            isProcessing = false;
        }
    }

    function generateRandomNumbers() {
        const numbers = [];
        for (let i = 1; i < 6; i++) {
            const randomNumber = Math.floor(Math.random() * 100) + 1;
            numbers.push(randomNumber);
        }
        return numbers;
    }
});
</script>