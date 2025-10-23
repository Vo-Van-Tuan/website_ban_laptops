@if(!empty($product->pro_content))
    <div class="reviews content_text" style="float: left; width: 190%; margin: 10px;">
        <h4 class="reviews-title" style=" text-align: center; margin-top:10px">
            <b class="product_details_title" style="padding: .75rem 1.25rem;margin-bottom: 0; background-color: rgba(0,0,0,.03);border-bottom: 1px solid rgba(0,0,0,.125)">Chi tiết sản phẩm</b>
        </h4>
        <div class="product_details_content" style=" padding: 10px; ">
            {!! $product->pro_content !!}
        </div>

    </div>
@endif
