    <link rel="stylesheet" type="text/css" href="{{ asset('css/inc_album.css') }}">
	<div id="content-wrapper">
		<div class="column">
			<img id="featured" style="margin-left:40px;" src="{{ pare_url_file($product->pro_avatar) }}">

			<div id="slide-wrapper" >
				<img id="slideLeft" class="arrow" src="{{ asset('icon/left.png') }}">

				<div id="slider">
                @foreach ($images as $img)
                        <img class="thumbnail active" src=" {{ pare_url_file($img->pi_slug) }}">
                @endforeach
				</div>

				<img id="slideRight" class="arrow" src="{{ asset('icon/right.png') }}">
			</div>
		</div>
	</div>

	<script type="text/javascript">
		let thumbnails = document.getElementsByClassName('thumbnail')

		let activeImages = document.getElementsByClassName('active')

		for (var i=0; i < thumbnails.length; i++){

			thumbnails[i].addEventListener('mouseover', function(){
				console.log(activeImages)
				
				if (activeImages.length > 0){
					activeImages[0].classList.remove('active')
				}
				

				this.classList.add('active')
				document.getElementById('featured').src = this.src
			})
		}


		let buttonRight = document.getElementById('slideRight');
		let buttonLeft = document.getElementById('slideLeft');

		buttonLeft.addEventListener('click', function(){
			document.getElementById('slider').scrollLeft -= 180
		})

		buttonRight.addEventListener('click', function(){
			document.getElementById('slider').scrollLeft += 180
		})


	</script>

