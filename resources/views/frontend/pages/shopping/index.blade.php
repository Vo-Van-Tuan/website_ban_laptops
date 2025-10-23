@extends('layouts.app_master_frontend')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/cart.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/toastr/toastr.min.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@stop
@section('content')
    <div class="container cart">
        <div class="left">
            <div class="list">
                <div class="title">THÔNG TIN GIỎ HÀNG</div>
                <div class="list__content">
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width: 100px;"></th>
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
                                        <a href="{{ route('get.product.detail', \Str::slug($item->name) . '-' . $item->id) }}"
                                            title="{{ $item->name }}" class="avatar image contain">
                                            <img alt="" src="{{ pare_url_file($item->options->image) }}"
                                                class="lazyload">
                                        </a>
                                    </td>
                                    <td>
                                        <a
                                            href="{{ route('get.product.detail', \Str::slug($item->name) . '-' . $item->id) }}"><strong>{{ $item->name }}</strong></a>
                                    </td>
                                    <td>
                                        <p>
                                            <b>{{ number_format($item->price, 0, ',', '.') }} đ</b>
                                            <br>
                                            @if ($item->options->price_old)
                                                <span class="sale">Giảm: <b> {{ $item->options->sale }} %</b></span>
                                                <br>
                                                <span
                                                    style="text-decoration: line-through;">{{ number_format(number_price($item->options->price_old), 0, ',', '.') }}
                                                    đ</span>
                                            @endif
                                        </p>
                                    </td>
                                    <td>
                                        <div class="qty_number">
                                            <input type="number" min="1" class="input_quantity"
                                                name="quantity_14692" value="{{ $item->qty }}" id="" disabled>
                                            <p data-price="{{ $item->price }}"
                                                data-url="{{ route('ajax_get.shopping.update', $key) }}"
                                                data-id-product="{{ $item->id }}">
                                                <span class="js-increase">+</span>
                                                <span class="js-reduction">-</span>
                                            </p>
                                            <a
                                                href="{{ route('get.shopping.delete', $key) }}"class="js-delete-item btn-action-delete">
                                                <i class="la la-trash"></i>
                                            </a>
                                        </div>
                                    </td>
                                    <td>
                                        <span
                                            class="js-total-item">{{ number_format($item->price * $item->qty, 0, ',', '.') }}đ</span>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <p style="float: right;margin-top: 20px;">Tổng tiền : <b id="sub-total">{{ \Cart::subtotal(0) }} đ</b>
                    </p>
                </div>
            </div>
        </div>
        <div class="right">
            <div class="customer">
                <div class="title">THÔNG TIN ĐẶT HÀNG</div>
                <div class="customer__content">
                    <form class="from_cart_register" action="{{ route('post.shopping.pay') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="name">Họ và tên <span class="cRed">(*)</span></label>
                            <input name="tst_name" id="name" required="" value="{{ get_data_user('web', 'name') }}"
                                type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="phone">Điện thoại <span class="cRed">(*)</span></label>
                            <input name="tst_phone" id="phone" required=""
                                value="{{ get_data_user('web', 'phone') }}" type="text" class="form-control">
                        </div>
                        {{-- <div class="form-group">
                            <label for="address">Địa chỉ <span class="cRed">(*)</span></label>
                            <input name="tst_address" id="address" required=""
                                value="{{ get_data_user('web', 'address') }}" type="text" class="form-control">
                        </div> --}}

                        <div class="form-group">
                            <select name="Province" class="form-control form-select-sm mb-3" id="city"
                                aria-label=".form-select-sm">
                                <option value="" selected>Chọn tỉnh thành</option>
                            </select>

                            <select name="District" class="form-control form-select-sm mb-3" id="district"
                                aria-label=".form-select-sm">
                                <option value="" selected>Chọn quận huyện</option>
                            </select>

                            <select name="Ward" class="form-control form-select-sm" id="ward"
                                aria-label=".form-select-sm">
                                <option value="" selected>Chọn phường xã</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="address">Địa chỉ chi tiết <span class="cRed">(*)</span></label>
                            <input name="dis" id="dis" required=""
                                value="{{ get_data_user('web', 'address') }}" type="text" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="email">Email <span class="cRed">(*)</span></label>
                            <input name="tst_email" id="email" required=""
                                value="{{ get_data_user('web', 'email') }}" type="text" value=""
                                class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="note">Ghi chú thêm</label>
                            <textarea name="tst_note" id="note" cols="3" style="min-height: 100px;" rows="2"
                                class="form-control"></textarea>
                        </div>
                        <div class="btn-buy">
                            <button type="button" class="course_item_btn buy1 btn btn-purple {{ \Cart::count() ? '' : 'no-cart' }}"
                                data-toggle="modal" id="ConfirmTransaction"
                                data-target="{{ \Cart::count() ? '#exampleModalCenter' : '' }}" style="width: 100%"
                                type="submit" name="pay" value="online">
                                Xác nhận Thanh Toán
                            </button>
                            {{-- <button class="buy1 btn btn-purple {{ \Auth::id() ? '' : 'js-show-login' }}"
                            style="width: 100%" type="submit" name="pay" value="online">
                            Thanh toán khi nhận hàng
                        </button>
                        <button class="buy1 btn btn-primary {{ \Auth::id() ? '' : 'js-show-login' }}"
                            style="width: 100%;margin-top: 20px" type="submit" name="pay" value="transfer">
                            Thanh toán Online
                        </button> --}}
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document" style="max-width: 1000px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Xác nhận đặt hàng</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @include('frontend.pages.shopping.track._inc_payonline')
                {{--<div class="modal-body cart">
                    <div class="left" style="width: 100%;">
                        <div class="list">
                            <div class="list__content">
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
                                                    <a id="pro_name" href="{{ route('get.product.detail', \Str::slug($item->name) . '-' . $item->id) }}"
                                                        title="{{ $item->name }}" class="avatar image contain">
                                                        <img alt=""
                                                            src="{{ pare_url_file($item->options->image) }}"
                                                            class="lazyload">
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
                                                        <input type="number" min="1" class="input_quantity"
                                                            name="quantity_14692" value="{{ $item->qty }}"
                                                            id="" disabled>
                                                        <p data-price="{{ $item->price }}"
                                                            data-url="{{ route('ajax_get.shopping.update', $key) }}"
                                                            data-id-product="{{ $item->id }}">
                                                            <span class="js-increase">+</span>
                                                            <span class="js-reduction">-</span>
                                                        </p>
                                                        <a
                                                            href="{{ route('get.shopping.delete', $key) }}"class="js-delete-item btn-action-delete">
                                                            <i class="la la-trash"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <span
                                                        class="js-total-item">{{ number_format($item->price * $item->qty, 0, ',', '.') }}đ</span>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <p style="float: right;margin-top: 20px;">Tổng tiền : <b
                                        id="sub-total">{{ \Cart::subtotal(0) }} đ</b>
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
                                <form class="from_cart_register" action="{{ route('post.shopping.pay') }}"
                                    method="post">
                                    @csrf
                                    <div class="form-group" style=" margin: 0px; ">
                                        <label for="name">Họ và tên <span class="cRed">(*)</span></label>
                                        <input name="tst_name" id="name" required=""
                                            value="{{ get_data_user('web', 'name') }}" type="text"
                                            class="form-control">
                                    </div>
                                    <div class="form-group"style=" margin: 0px; ">
                                        <label for="phone">Điện thoại <span class="cRed">(*)</span></label>
                                        <input name="tst_phone" id="phone" required=""
                                            value="{{ get_data_user('web', 'phone') }}" type="text"
                                            class="form-control">
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Tỉnh thành <span class="cRed">(*)</span></label>
                                        <input name="SProvince" id="address" required="" value=""
                                            type="text" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="address">Quận huyện <span class="cRed">(*)</span></label>
                                        <input name="SDistrict" id="address" required="" value=""
                                            type="text" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="address">Phường xã <span class="cRed">(*)</span></label>
                                        <input name="SWard" id="address" required="" value=""
                                            type="text" class="form-control">
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Địa chỉ chi tiết <span class="cRed">(*)</span></label>
                                        <input name="SDis" id="address" required=""
                                            value="{{ get_data_user('web', 'address') }}" type="text"
                                            class="form-control">
                                    </div>
                                    <div class="form-group"style=" margin: 0px; ">
                                        <label for="email">Email <span class="cRed">(*)</span></label>
                                        <input name="tst_email" id="email" required=""
                                            value="{{ get_data_user('web', 'email') }}" type="text" value=""
                                            class="form-control">
                                    </div>
                                    <div class="form-group"style=" margin: 0px; ">
                                        <label for="note">Ghi chú thêm</label>
                                        <textarea name="tst_note" id="note" cols="3" style="min-height: 100px;" rows="2"
                                            class="form-control"></textarea>
                                    </div>
                                    <div class="title">Chọn hình thức thanh toán.</div>
                                    <div class="btn-buy">
                                        <button class="buy1 btn btn-purple {{ \Auth::id() ? '' : 'js-show-login' }}"
                                            style="width: 100%" type="submit" name="pay" value="online">
                                            Thanh toán khi nhận hàng
                                        </button>
                                        <button class="buy1 btn btn-primary {{ \Auth::id() ? '' : 'js-show-login' }}"
                                            style="width: 100%;margin-top: 20px" type="submit" name="pay"
                                            value="transfer">
                                            Thanh toán Online
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>--}}
            </div>
        </div>
    </div>

@stop
@section('script')
    <script src="{{ asset('js/cart.js') }}" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <script src="{{ asset('admin/plugins/toastr/toastr.min.js') }}"></script>

    <script type="text/javascript">
        $(function() {
            $(".js-delete-item").click(function(event) {
                event.preventDefault();
                let $this = $(this);
                let url = $this.attr('href');


                $.confirm({
                    title: 'Bạn có muốn xoá dữ liệu không?',
                    content: 'Dữ liệu xoá đi không thể khôi phục',
                    type: 'red',
                    buttons: {
                        ok: {
                            text: "ok!",
                            btnClass: 'btn-primary',
                            keys: ['enter'],
                            action: function() {
                                if (url) {
                                    $.ajax({
                                        url: url,
                                    }).done(function(results) {
                                        toastr.success(results.messages);
                                        $this.parents('tr').remove();
                                        $("#sub-total").text(results.totalMoney + " đ");
                                        window.location.reload();
                                    });
                                }
                            }
                        },
                        cancel: function() {

                        }
                    }
                });
            });
        });


        $(document).on('click', '.no-cart', function(e) {
            e.preventDefault();

            toastr.error('Chưa có sản phẩm!');
            return false;
        });


        $(document).on('click', '#ConfirmTransaction', function(e) {
            // Lấy giá trị từ các ô select và input
            var province = $('#city').val();
            var district = $('#district').val();
            var ward = $('#ward').val();
            var dis = $('#dis').val();

            // Truyền giá trị vào các ô input tương ứng
            $('input[name="SProvince"]').val(province);
            $('input[name="SDistrict"]').val(district);
            $('input[name="SWard"]').val(ward);
            $('input[name="SDis"]').val(dis);
        });
    </script>
    <script>
        var citis = document.getElementById("city");
        var districts = document.getElementById("district");
        var wards = document.getElementById("ward");
        var Parameter = {
            url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json",
            method: "GET",
            responseType: "application/json",
        };
        var promise = axios(Parameter);
        promise.then(function(result) {
            renderCity(result.data);
        });

        function renderCity(data) {
            for (const x of data) {
                citis.options[citis.options.length] = new Option(x.Name, x.Name);
            }
            citis.onchange = function() {
                district.length = 1;
                ward.length = 1;
                if (this.value != "") {
                    const result = data.filter(n => n.Name === this.value);

                    for (const k of result[0].Districts) {
                        district.options[district.options.length] = new Option(k.Name, k.Name);
                    }
                }
            };
            district.onchange = function() {
                ward.length = 1;
                const dataCity = data.filter((n) => n.Name === citis.value);
                if (this.value != "") {
                    const dataWards = dataCity[0].Districts.filter(n => n.Name === this.value)[0].Wards;

                    for (const w of dataWards) {
                        wards.options[wards.options.length] = new Option(w.Name, w.Name);
                    }
                }
            };
        }
    </script>
    <script>
        
    </script>
@stop
