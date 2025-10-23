@extends('layouts.app_master_frontend')

@section('css')
    @php
        $display_menu = config('layouts.component.cate.home.display');
        //
    @endphp
    <style>
        <?php $style = file_get_contents('css/home_insights.min.css');
        echo $style; ?> #menu-main {
            display: '{{ $display_menu }}';
        }
    </style>
    <style>
        <link rel="stylesheet" href="{{ asset('admin/plugins/toastr/toastr.min.css') }}">
    </style>
@stop

@section('content')
    <div class="component-slide">
        @if (config('layouts.pages.home.slide.with') == 'full')
            <div id="content-slide">
                <div class="spinner">
                    <a class="rect1"></a>
                    <a class="rect2"></a>
                    <a class="rect3"></a>
                    <a class="rect4"></a>
                    <a class="rect5"></a>
                </div>
            </div>
        @else
            <div class="container" style="display: flex">
                <div class="left" style="width: 250px">
                </div>
                <div class="right" style=" width: calc(100% - 250px);">
                    <div id="content-slide">
                        <div class="spinner">
                            <div class="rect1"></div>
                            <div class="rect2"></div>
                            <div class="rect3"></div>
                            <div class="rect4"></div>
                            <div class="rect5"></div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
    <div class="container" id="before-slide">
        <div class="product-one">
            <div class="top">
                <a title="" class="main-title">SẢN PHẨM BÁN CHẠY</a>
            </div>
            <div class="bot">
                {{-- @for ($i = 1; $i <= 5; $i++) --}}
                {{-- </div> --}}
                {{-- @endfor --}}
                @if ($event1)
                @endif
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    @foreach ($productsPay as $product)
                        <div class="item">
                            @include('frontend.components.product_item', ['product' => $product])
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

        @if ($event2)
            @include('frontend.pages.home.include._inc_flash_sale')
        @endif
        {{-- <div class="product-two">
            <div class="top">
            </div>
            <div class="bot">
                @for ($i = 0; $i < 4; $i++)
                    <div class="item">
                        @include('frontend.components.product_item')
                    </div>
                @endfor
            </div>
        </div> --}}

        <div class="product-three">
            <div class="top">
                <a title="" class="main-title">SẢN PHẨM MỚI</a>
            </div>
            <div class="bot">
                {{-- @for ($i = 1; $i <= 5; $i++) --}}
                {{-- </div> --}}
                {{-- @endfor --}}
                @if ($event1)
                @endif
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    @if (isset($productsNew))
                        @foreach ($productsNew as $product)
                            <div class="item">
                                @include('frontend.components.product_item', ['product' => $product])
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>

        <div class="product-two">
            <div class="top">
                <a class="main-title">SẢN PHẨM NỔI BẬT</a>
            </div>
            <div class="bot">
                @if (isset($productsHot))
                    @foreach ($productsHot as $product)
                        <div class="item">
                            @include('frontend.components.product_item', ['product' => $product])
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="product-two" id="product-recently"></div>
        <div id="product-by-category"></div>
        @include('frontend.pages.home.include._inc_article')
    </div>
    <a href="https://www.messenger.com/t/61562254051651" target="_blank">
        <div style="height: 50px;width: 50px;position: fixed;inset: auto 0px 123px 20px;cursor: pointer;">
            <img src="{{ asset('icon/messs.png') }}" width="50" height="50">
        </div>
    </a>
@stop

@section('script')
    <script type="text/javascript">
        var routeRenderProductRecently = '{{ route('ajax_get.product_recently') }}';
        var routeRenderProductByCategory = '{{ route('ajax_get.product_by_category') }}';
        var routeRenderSlide = '{{ route('ajax_get.slide') }}';
        var CSS = "{{ asset('css/home.min.css') }}";
        <?php $js = file_get_contents('js/home.js');
        echo $js; ?>
    </script>


    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="{{ asset('admin/plugins/toastr/toastr.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $(document).on('click', '.js-add-favourite', function(e) {
                e.preventDefault();
                console.log(6);
                var url = $(this).attr('href');

                $.ajax({
                    url: url,
                    method: 'POST',
                    // data: "_token": "{{ csrf_token() }}",
                    success: function(response) {
                        toastr.success(response.messages);
                    },
                    error: function(error) {

                    }
                });
            });
        });
    </script>
@stop
