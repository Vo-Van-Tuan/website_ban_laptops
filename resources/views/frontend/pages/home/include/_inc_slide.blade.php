<div id="slider" style="width: 100%; margin: 10px auto auto auto;">
    <div class="imageSlide js-banner owl-carousel">
        @foreach($slides as $item)
            <div>
                <a href="{{$item->sd_link}}">
                    <img alt="Đồ án tốt nghiệp" src="{{ pare_url_file($item->sd_image) }}"  style="max-width: 100%;height: 500px;" class="" />
                </a>
            </div>
        @endforeach
    </div>
</div>
