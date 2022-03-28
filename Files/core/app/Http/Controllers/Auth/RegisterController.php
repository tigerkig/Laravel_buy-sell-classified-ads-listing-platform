<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\AdminNotification;
use App\Models\GeneralSetting;
use App\Models\User;
use App\Models\UserLogin;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use DB;

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
        $this->middleware('regStatus')->except('registrationNotAllowed');

        $this->activeTemplate = activeTemplate();
    }

    public function showRegistrationRadioItems()
    {
        $page_title = "Select Radio";
        // session()->put('reference', $reference);
        // $info = json_decode(json_encode(getIpInfo()), true);
        // $country_code = @implode(',', $info['code']);
        return view($this->activeTemplate . 'user.auth.radioSelect', compact('page_title'));
    }
    public function referralRegister($reference)
    {
        $page_title = "Registra un account";
        session()->put('reference', $reference);
        $info = json_decode(json_encode(getIpInfo()), true);
        $country_code = @implode(',', $info['code']);
        return view($this->activeTemplate . 'user.auth.register', compact('reference', 'page_title','country_code'));
    }

    public function showRegistrationForm(Request $request)
    {
        $page_title = "Registra un account";
        $info = json_decode(json_encode(getIpInfo()), true);
        $country_code = @implode(',', $info['code']);
        // $cities =json_encode(DB::select('select name from districts'));
        $citiesget =DB::select('select name from districts');
        // $citiesSort = json_encode($cities->sortBy("name"));
        sort($citiesget);
        // var_dump($cities);
        // return;
        $cities = json_encode($citiesget);
        // $country_code = @implode(',', $info['code']);
        return view($this->activeTemplate . 'user.auth.register', compact('page_title','cities','country_code'));
        // return redirect(route('user.naturalperson'));
        // return view($this->activeTemplate . 'user.auth.registernatural', compact('page_title','country_code'));
        // if($radioVal == "0")
        // {
        //     // return redirect(route('user.naturalperson'));
        //     return view($this->activeTemplate . 'user.auth.registernatural', compact('page_title','country_code'));
        // }
        // else if ($radioVal == "1")
        // {
        //     // return redirect(route('user.legalperson'));
        //     return view($this->activeTemplate . 'user.auth.registerlegal', compact('page_title','country_code'));
        // }
        // // return view($this->activeTemplate . 'user.auth.register', compact('page_title','country_code'));
    }


    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        $validate = Validator::make($data, [
            'firstname' => 'sometimes|required|string|max:60',
            'lastname' => 'sometimes|required|string|max:60',
            'email' => 'required|string|email|max:160|unique:users',
            'mobile' => 'required|string|max:30|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'username' => 'required|alpha_num|unique:users|min:6',
            'captcha' => 'sometimes|required',
            'country_code' => 'required'
        ]);

        return $validate;
    }

    // protected function validatorlegal(array $data)
    // {
    //     $validate = Validator::make($data, [
    //         'firstname' => 'sometimes|required|string|max:60',
    //         'lastname' => 'sometimes|required|string|max:60',
    //         'email' => 'required|string|email|max:160|unique:users',
    //         'RLemail' => 'required|string|email|max:160',
    //         'Lcountry' => 'required|string|max:100',
    //         'RLcountry' => 'required|string|max:100',
    //         // 'VATnumber' => '',
    //         'description' => 'required|string|min:10',
    //         'RLbirthday'=> 'required|string',
    //         'Cphone' => 'required|string|max:30|unique:users',
    //         'Lphone' => 'required|string|max:30|unique:users',
    //         'password' => 'required|string|min:6|confirmed',
    //         'username' => 'required|alpha_num|unique:users|min:6',
    //         'captcha' => 'sometimes|required',
    //     ]);

    //     return $validate;
    // }

    public function register(Request $request)
    {
        $this->validator($request->all())->validate();
        $general = GeneralSetting::first();
        if ($general->secure_password) {
            $notify = $this->strongPassCheck($request->password);
            if ($notify) {
                return back()->withNotify($notify)->withInput($request->all());
            }
        }

        $exist = User::where('mobile',$request->country_code.$request->mobile)->first();
        if ($exist) {
            $notify[] = ['error', 'Mobile number already exist'];
            return back()->withNotify($notify)->withInput();
        }

        if (isset($request->captcha)) {
            if (!captchaVerify($request->captcha, $request->captcha_secret)) {
                $notify[] = ['error', "Invalid Captcha"];
                return back()->withNotify($notify)->withInput();
            }
        }

        event(new Registered($user = $this->create($request->all())));

        $this->guard()->login($user);

        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }

    public function register_legal(Request $request)
    {
        // $this->validatorlegal($request->all())->validate();
        $general = GeneralSetting::first();
        if ($general->secure_password) {
            $notify = $this->strongPassCheck($request->password);
            if ($notify) {
                return back()->withNotify($notify)->withInput($request->all());
            }
        }

        // $exist = User::where('mobile',$request->country_code.$request->mobile)->first();
        // if ($exist) {
        //     $notify[] = ['error', 'Mobile number already exist'];
        //     return back()->withNotify($notify)->withInput();
        // }

        // if (isset($request->captcha)) {
        //     if (!captchaVerify($request->captcha, $request->captcha_secret)) {
        //         $notify[] = ['error', "Invalid Captcha"];
        //         return back()->withNotify($notify)->withInput();
        //     }
        // }

        event(new Registered($user = $this->createlegal($request->all())));

        $this->guard()->login($user);

        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        $gnl = GeneralSetting::first();


        $referBy = session()->get('reference');
        if ($referBy != null) {
            $referUser = User::where('username', $referBy)->first();
        } else {
            $referUser = null;
        }

        //User Create
        $user = new User();
        $user->firstname = isset($data['firstname']) ? $data['firstname'] : null;
        $user->lastname = isset($data['lastname']) ? $data['lastname'] : null;
        $user->email = strtolower(trim($data['email']));
        $user->password = Hash::make($data['password']);
        $user->username = trim($data['username']);
        $user->ref_by = ($referUser != null) ? $referUser->id : null;
        $user->mobile = $data['country_code'].$data['mobile'];
        $user->address = [
            'address' => '',
            'state' => '',
            'zip' => '',
            'country' => isset($data['country']) ? $data['country'] : null,
            'city' => ''
        ];
        // $user->birthday = isset($data['birthday']) ? $data['birthday'] : null;
        $user->status = 0;
        $user->ev = $gnl->ev ? 0 : 1;
        $user->sv = $gnl->sv ? 0 : 1;
        $user->ts = 0;
        $user->tv = 1;
        $user->save();


        $adminNotification = new AdminNotification();
        $adminNotification->user_id = $user->id;
        $adminNotification->title = 'New member registered';
        $adminNotification->click_url = urlPath('admin.users.detail',$user->id);
        $adminNotification->save();


        //Login Log Create
        $ip = $_SERVER["REMOTE_ADDR"];
        $exist = UserLogin::where('user_ip',$ip)->first();
        $userLogin = new UserLogin();

        //Check exist or not
        if ($exist) {
            $userLogin->longitude =  $exist->longitude;
            $userLogin->latitude =  $exist->latitude;
            $userLogin->location =  $exist->location;
            $userLogin->country_code = $exist->country_code;
            $userLogin->country =  $exist->country;
        }else{
            $info = json_decode(json_encode(getIpInfo()), true);
            $userLogin->longitude =  @implode(',',$info['long']);
            $userLogin->latitude =  @implode(',',$info['lat']);
            $userLogin->location =  @implode(',',$info['city']) . (" - ". @implode(',',$info['area']) ."- ") . @implode(',',$info['country']) . (" - ". @implode(',',$info['code']) . " ");
            $userLogin->country_code = @implode(',',$info['code']);
            $userLogin->country =  @implode(',', $info['country']);
        }

        $userAgent = osBrowser();
        $userLogin->user_id = $user->id;
        $userLogin->user_ip =  $ip;
        
        $userLogin->browser = @$userAgent['browser'];
        $userLogin->os = @$userAgent['os_platform'];
        $userLogin->save();


        return $user;
    }

    protected function createlegal(array $data)
    {

        $gnl = GeneralSetting::first();


        $referBy = session()->get('reference');
        if ($referBy != null) {
            $referUser = User::where('username', $referBy)->first();
        } else {
            $referUser = null;
        }

        //User Create
        $user = new User();
        $user->firstname = isset($data['firstName']) ? $data['firstName'] : null;
        $user->lastname = isset($data['lastName']) ? $data['lastName'] : null;
        $user->email = strtolower(trim($data['Lemail']));
        $user->password = Hash::make($data['password']);
        $user->businessname = isset($data['businessname']) ? $data['businessname'] : null;
        $user->description = isset($data['description']) ? $data['description'] : null;
        $user->VATnumber = isset($data['VATnumber']) ? $data['VATnumber'] : null;
        $user->Lcountry = isset($data['Lcountry']) ? $data['Lcountry'] : null;
        $user->RLcountry = isset($data['RLcountry']) ? $data['RLcountry'] : null;
        // $user->RLbirthday = isset($data['RLbirthday']) ? $data['RLbirthday'] : null;
        $user->Cphone = isset($data['Cphone']) ? $data['Cphone'] : null;
        $user->Lphone = isset($data['Lphone']) ? $data['Lphone'] : null;
        $user->RLemail = isset($data['RLemail']) ? $data['RLemail'] : null;
        $user->ref_by = ($referUser != null) ? $referUser->id : null;
        $user->status = 1;
        $user->ev = $gnl->ev ? 0 : 1;
        $user->sv = $gnl->sv ? 0 : 1;
        $user->ts = 0;
        $user->tv = 1;
        $user->save();


        $adminNotification = new AdminNotification();
        $adminNotification->user_id = $user->id;
        $adminNotification->title = 'New member registered';
        $adminNotification->click_url = urlPath('admin.users.detail',$user->id);
        $adminNotification->save();


        //Login Log Create
        $ip = $_SERVER["REMOTE_ADDR"];
        $exist = UserLogin::where('user_ip',$ip)->first();
        $userLogin = new UserLogin();

        //Check exist or not
        if ($exist) {
            $userLogin->longitude =  $exist->longitude;
            $userLogin->latitude =  $exist->latitude;
            $userLogin->location =  $exist->location;
            $userLogin->country_code = $exist->country_code;
            $userLogin->country =  $exist->country;
        }else{
            $info = json_decode(json_encode(getIpInfo()), true);
            $userLogin->longitude =  @implode(',',$info['long']);
            $userLogin->latitude =  @implode(',',$info['lat']);
            $userLogin->location =  @implode(',',$info['city']) . (" - ". @implode(',',$info['area']) ."- ") . @implode(',',$info['country']) . (" - ". @implode(',',$info['code']) . " ");
            $userLogin->country_code = @implode(',',$info['code']);
            $userLogin->country =  @implode(',', $info['country']);
        }

        $userAgent = osBrowser();
        $userLogin->user_id = $user->id;
        $userLogin->user_ip =  $ip;
        
        $userLogin->browser = @$userAgent['browser'];
        $userLogin->os = @$userAgent['os_platform'];
        $userLogin->save();


        return $user;
    }
    protected function strongPassCheck($password){
        $password = $password;
        $capital = '/[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/';
        $capital = preg_match($capital,$password);
        $notify = null;
        if (!$capital) {
            $notify[] = ['error','Minimum 1 capital word is required'];
        }
        $number = '/[123456790]/';
        $number = preg_match($number,$password);
        if (!$number) {
            $notify[] = ['error','Minimum 1 number is required'];
        }
        $special = '/[`!@#$%^&*()_+\-=\[\]{};:"\\|,.<>\/?~\']/';
        $special = preg_match($special,$password);
        if (!$special) {
            $notify[] = ['error','Minimum 1 special character is required'];
        }
        return $notify;
    }

    public function registered()
    {
        return redirect(route('user.home'));
    }

}
