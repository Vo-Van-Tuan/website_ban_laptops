<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequestRegister;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use App\Mail\RegisterSuccess;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use App\Mail\SendMailRegister;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function getFormRegister()
    {
        $title_page = 'Đăng ký';
        return view('auth.register', compact('title_page'));
    }

    public function postRegister(RequestRegister $request)
    {
        $data               = $request->except("_token");

        $popularDomains = [
            'gmail.com',
            'yahoo.com',
            'hotmail.com',
            'outlook.com',
            'live.com',
            'aol.com',
            'icloud.com',
            'mail.com',
            'yandex.com',
            'protonmail.com',
            'caothang.edu.vn'
        ];

        $domain = substr(strrchr($request->email, "@"), 1);

        if(!in_array($domain, $popularDomains)) {
            //return response()->json(['error' => 'Email domain is not popular.'], 400);
            return redirect()->route('get.register')->with('fail', 'Địa chỉ email không xác định');
        }

        $data['password']   =  Hash::make($data['password']);
        $data['created_at'] = Carbon::now();
        $data['active_token'] = Str::random(60);

        Mail::to($request->email)->send(new SendMailRegister($request->name, $data['active_token']));
        $id = User::insertGetId($data);

        if ($id) {
            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Đăng ký thành công vui lòng kiểm tra email để kích hoạt tài khoản'
            ]);
            // Mail::to($request->email)->send(new RegisterSuccess($request->name));
            return redirect()->route('get.login');
        }

        return redirect()->back();
    }


    public function activateAccount($token)
    {
        $user = User::where('active_token', $token)->first();
    
        if ($user) {
            $user->active = 1; // Đã kích hoạt
            $user->active_token = null;
            $user->save();
    
            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Tài khoản của bạn đã được kích hoạt thành công'
            ]);
    
            return redirect()->route('get.login');
        }
    
        \Session::flash('toastr', [
            'type'    => 'error',
            'message' => 'Mã kích hoạt không hợp lệ hoặc tài khoản đã được kích hoạt'
        ]);
    
        return redirect()->route('get.login');
    }
    
}
