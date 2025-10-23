@extends('layouts.app_master_frontend')
@section('css')
<style>
    <?php $style = file_get_contents('css/auth.min.css');
echo $style;?>
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
                <a itemprop="url" href="#" title="Account"><span itemprop="title">Account</span></a>
            </li>

            <li>
                <a itemprop="url" href="#" title="Đăng ký"><span itemprop="title">Đăng ký</span></a>
            </li>

        </ul>
    </div>
    <div class="auth" style="background: white;">
        <form class="from_cart_register" action="" method="post" style="width: 500px;margin:0 auto;padding: 30px 0">
            @csrf
            @if ($message = Session::get('fail'))
                <div>
                    <div style="color: #dd0505;font-size: 2.2em;font-weight: bold;text-align: center;">{{ $message }}</div>
                </div>
            @endif
            <div class="form-group">
                <label for="name">Họ tên <span class="cRed">(*)</span></label>
                <input name="name" id="name" type="text" value="{{  old('name') }}" class="form-control"
                    placeholder="Nguyen Van A">
                @if ($errors->first('name'))
                    <span class="text-danger">{{ $errors->first('name') }}</span>
                @endif
            </div>
            <div class="form-group">
                <label for="name">Email <span class="cRed">(*)</span></label>
                <input name="email" id="name" type="email" value="{{  old('email') }}" class="form-control"
                    placeholder="nguyenvana@gmail.com">
                @if ($errors->first('email'))
                    <span class="text-danger">{{ $errors->first('email') }}</span>
                @endif
            </div>
            <div class="form-group">
                <label for="phone">Mật khẩu <span class="cRed">(*)</span></label>
                <div class="input-box" style="display: flex;position: relative;align-items: center;">
                    <input name="password" id="phone" type="password" placeholder="Mật khẩu" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).{8,}" required>
                    <span class="error" id="password-error"></span>
                    <img src="{{ asset('icon/eye_close.png') }}" onclick="handle()" id="eyeicon"
                        style=" width: 30px; position: absolute; right: 10px; ">
                </div>
                @if ($errors->first('password'))
                    <span class="text-danger">{{ $errors->first('password') }}</span>
                @endif
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại <span class="cRed">(*)</span></label>
                <input name="phone" id="phone" type="tel" value="{{  old('phone') }}" placeholder="Nhập số điện thoại" maxlength="10" pattern="0[0-9]{9}" required
                    class="form-control">
                    <span style="color: #dd0505;font-size: 2.2em;font-weight: bold;text-align: center;" class="error" id="phone-error"></span>
                @if ($errors->first('phone'))
                    <span class="text-danger">{{ $errors->first('phone') }}</span>
                @endif
            </div>
            <div class="form-group">
                <button class="btn btn-purple">Đăng ký</button>
                <p>
                    <a href="{{ route('get.email_reset_password') }}">Quên mật khẩu</a>
                    <a href="{{ route('get.login') }}">Đăng nhập</a>
                </p>
            </div>
        </form>
    </div>
</div>
@endsection
@section('script')
<script type="text/javascript">
    <?php $js = file_get_contents('js/home.js');
    echo $js;?>
    const phoneInput = document.getElementById('phone');
    const phoneError = document.getElementById('phone-error');
    const passwordInput = document.getElementById('password');
    const passwordError = document.getElementById('password-error');

    passwordInput.addEventListener('input', function() {
        if (!passwordInput.validity.valid) {
            passwordError.textContent = 'Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be at least 8 characters long.';
        } else {
            passwordError.textContent = '';
        }
    });

    phoneInput.addEventListener('input', function() {
        if (!phoneInput.validity.valid) {
            phoneError.textContent = 'số điện thoại phải có it snhất 10 số.';
        } else {
            phoneError.textContent = '';
        }
    });

    phoneInput.addEventListener('keypress', function(event) {
        const key = event.key;
        if (!/\d/.test(key)) {
            event.preventDefault();
        }
    });

    
    function handle() {
        var pass = document.getElementById('phone')
        var eyeicon = document.getElementById('eyeicon')

        if (pass.type == "password") {
            pass.type = "text"
            eyeicon.src = "{{ asset('icon/eye_open.png') }}";
        } else {
            pass.type = "password"
            eyeicon.src = "{{ asset('icon/eye_close.png') }}";
        }
    }
</script>
@stop