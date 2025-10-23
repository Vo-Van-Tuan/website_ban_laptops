@if (isset($product))
<div class="product-item" style="width: 200px; height: 400px; display:flex; justify-content:space-around;">
    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" style="width: 150px;display: contents;" title=""
        class="avatar image contain">
        <img style="height: 150px;" alt="{{  $product->pro_name }}" data-src="{{ pare_url_file($product->pro_avatar) }} "
        src="{{  asset('images/preloader.gif') }}" class="lazyload lazy">
        
    </a>
    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title="{{  $product->pro_name }}"
        class="title">
        <h3>{{  $product->pro_name }}</h3>
    </a>
    <p class="rating" style="display: flex;justify-content: space-around;">
        <span>
            @php
            $iactive = 0;
            if ($product->pro_review_total){
            $iactive = round($product->pro_review_star / $product->pro_review_total,2);
            }

            @endphp
            @for($i = 1 ; $i <= 5 ; $i ++) <i class="la la-star {{ $i <= $iactive ? 'active' : ''  }}"></i>
                @endfor
        </span>
        <span class="text">{{ $product->pro_review_total }} đánh giá</span>
    </p>
    @if ($product->pro_sale)
    <p>
        <span class="percent">Giảm Giá: <b>{{ $product->pro_sale }}%</b></span>
        <br>
    <div>
        @php
        $price = ((100 - $product->pro_sale) * $product->pro_price) / 100 ;
        @endphp
        <span class="price">{{  number_format($price,0,',','.') }} đ</span>
        <br>
        <span class="price-sale">{{ number_format($product->pro_price,0,',','.') }} đ</span>
    </div>
    </p>
    @else
    <p class="price">{{  number_format($product->pro_price,0,',','.') }} đ</p>
    @endif
    <div class="" style="display: flex;justify-content: space-between;">
        <a href="{{ route('get.shopping.add', $product->id) }}" title="" onclick="add_cart_detail('17617',0);" style="color:#fff;background: #104a7c;padding: 11px;border-radius: 20px;">
            Thêm vào giỏ hàng
        </a>
        <a href=" {{ route('ajax_get.user.add_favourite', $product->id) }}" title="Thêm sản phẩm yêu thích"
            class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
            <span style="font-size: 30px;color: red;">♥</span>
        </a>
    </div>
</div>
@endif