@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Home"><span itemprop="title">Trang chủ</span></a>
                </li>
                <li>
                    <a itemprop="url" href="{{ route('get.product.list') }}" title="Sản phẩm">
                        <span itemprop="title">Sản phẩm</span>
                    </a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đăng nhập">
                        <span itemprop="title">{{ $product->pro_name }}</span>
                    </a>
                </li>

                {{--<div id="ex1" class="modal container">
                    @if (count($images) > 0)
                        <div class="container">
                            @php
                                $i = 0;
                            @endphp
                            @foreach ($images as $img)
                                <div class="mySlides" style="width:100%;">
                                    <img src=" {{ pare_url_file($img->pi_slug) }} " style="width:100%">
                                </div>
                            @endforeach

                            <a class="prev" onclick="plusSlides(-1)">❮</a>
                            <a class="next" onclick="plusSlides(1)">❯</a>
                            <div class="caption-container">
                                <p id="caption"></p>
                            </div>
                            <div class="row">
                                @foreach ($images as $img)
                                    <div class="column">
                                        <img class="demo cursor" src=" {{ pare_url_file($img->pi_slug) }}"
                                            style="width:100%" onclick="currentSlide({{ $i++ }})">
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @else
                        <h3>Không có ảnh nào </h3>
                    @endif
                </div>--}}
            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">
                    {{--<a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title=""
                       class="">
                        <img alt="" style="max-width: 100%;width: 100%;height: auto" src="{{ pare_url_file($product->pro_avatar) }}"
                             class="lazyload">
                    </a>--}}
                    @include('frontend.pages.product_detail.include._inc_album')
                </div>
                <div class="right" id="product-detail" data-id="{{ $product->id }}">
                    <h1>{{  $product->pro_name }}</h1>
                    <div class="right__content">
                        <div class="info">
                            <div class="prices">
                                @if ($product->pro_sale)
                                    
                                    @php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    @endphp
                                    <p>
                                        Giá bán: 
                                        <span class="value price-new">{{  number_format($price,0,',','.') }} đ</span>
                                        <span class="sale">Giảm: {{  $product->pro_sale }}%</span>
                                    </p>
                                    <p>Giá gốc:
                                        <span style="text-decoration:line-through;" class="value">{{ number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                @else
                                    <p>
                                        Giá bán: <span class="value price-new">{{  number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                @endif
                                <p>
                                    <span>Lượt xem :&nbsp</span>
                                    <span>{{ $product->pro_view }}</span>
                                </p>
                            </div>
                            <div class="btn-cart">
                                <a href="{{ route('get.shopping.add', $product->id) }}" title=""
                                   onclick="add_cart_detail('17617',0);" class="muangay">
                                    <span>Thêm vào giỏ hàng</span>
                                    <span>Hotline: 0394726213</span>
                                </a>
                                <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                   title="Thêm sản phẩm yêu thích"
                                   class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
                                    <span>Yêu thích</span>
                                    <span>Sản phẩm</span>
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">Thông tin</h2>
                                <div class="infomation__group">
                                    <div class="item">
                                        <p class="text1">Danh mục:</p>
                                        <h3 class="text2">
                                            @if (isset($product->category->c_name))
                                                <a href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                            @else
                                                "[N\A]"
                                            @endif
                                        </h3>
                                    </div>
                                    @foreach($attribute as $key => $attr)
                                    <div class="item">
                                        @foreach($attr as  $k => $at)
                                            @if (in_array($k, $attributeOld))
                                                <p class="text1">{{ $key }}:</p>
                                                <h3 class="text2">{{ $at['atb_name'] }}</h3>
                                            @endif
                                        @endforeach
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                            <hr>
                            <div class="infomation" style="border: 1px solid #ddd;padding: 14px;margin-bottom:15px;position:relative;margin-top:15px; height: 255px;">
                            <div style="display: flex;align-items: center;border-radius: 10px;background: aquamarine;width: 110px;height: 51px;margin: 10px auto;position:relative;top: -35px;">                        
                                <img class="infomation__title" width="30" height="30" src="https://img.icons8.com/color/30/gift--v1.png" alt="gift--v1" style="margin-bottom: 0px;border-bottom-width: 0px;padding-bottom: 0px;"/>
                                <span> Khuyến mãi</span>
                            </div>
                                <div class="infomation__group" style=" position: relative; top: -40px; ">
                                    <div class="item">
                                        <ul>
                                            <li style=" margin-bottom: 10px; ">- Tặng&nbsp;Balo Laptop Cao Cấp</li>
                                            <li style=" margin-bottom: 10px; ">- Tặng Chuột Không Dây Cao Cấp</li>
                                            <li style=" margin-bottom: 10px; ">- Tặng Túi Chống Sốc Miếng Lót Chuột Cao Cấp</li>
                                            <li style=" margin-bottom: 10px; ">- Tặng Phiếu Bảo Dưỡng Vệ Sinh Cài Đặt Miễn Phí Trọn Đời Máy</li>
                                            <li style=" margin-bottom: 10px; ">- Tặng Voucher Giảm Giá Cho Sinh Viên 3%&nbsp;Và&nbsp;Khách Hàng Cũ 5%</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @include('frontend.pages.product_detail.include._inc_detail_shop')
                    </div>
                </div>
            </div>
           <!--  <div class="" style="margin-bottom: 10px">
                <h4 class="reviews-title"><b>Nội dung</b></h4>
                {!! $product->pro_content !!}
                @if($product->pro_link)
                <iframe src="{{ $product->pro_link }}" width="100%" height="1000"></iframe>
                @endif
            </div> -->
            <div class="card">
                <div class="card-body info-detail">
                    @include('frontend.pages.product_detail.include._inc_content1')
                    
                    @include('frontend.pages.product_detail.include._inc_content')
                    
                </div>

            </div>
            
            
            @include('frontend.pages.product_detail.include._inc_ratings')
            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST">
                        <input type="hidden" name="productId" value="{{ $product->id }}">
                        <div class="form-group">
                            <textarea placeholder="Mời bạn để lại bình luận ..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
{{--                                <a href=""><i class="la la-camera"></i> Gửi ảnh</a>--}}
{{--                                <a href="">Quy định đăng bình luận</a>--}}
                            </p>
                            <button class=" {{ \Auth::id() ? 'js-save-comment' : 'js-show-login' }}">Gửi bình luận</button>
                        </div>
                    </form>
                </div>
                @include('frontend.pages.product_detail.include._inc_list_comments')
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                @foreach($productsSuggests as $product)
                                    <div class="item">
                                        @include('frontend.components.product_item',['product' => $product])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                @if (isset($event3))
                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"src="{{ pare_url_file($event3->e_banner) }}"></a>
                @endif
            </div>
        </div>
    </div>
    @if ($isPopupCaptcha >= 2)
        @include('frontend.pages.product_detail.include._inc_popup_captcha')
    @endif
@stop
@section('script')
    <script>
		var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
		var CSS = "{{ asset('css/product_detail.min.css') }}";
		var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'
    </script>
    <script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>

@stop
