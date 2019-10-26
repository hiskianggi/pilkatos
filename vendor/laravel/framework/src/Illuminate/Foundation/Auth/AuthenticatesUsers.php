<?php

namespace Illuminate\Foundation\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
use Hash;
use Session;

trait AuthenticatesUsers
{
    use RedirectsUsers, ThrottlesLogins;

    /**
     * Show the application's login form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showLoginForm($path)
    {   
        $check = DB::table('cms_users')
        ->where([
            'path' => $path,
            'status' => 'Active'
        ])
        ->first();
        
        $bg_login = DB::table('login_background')
        ->where('cms_users_id',$check->id)
        ->first();

        $data['cms_users_id'] = $check->id;
        $data['bg_login'] = $bg_login->photo;
        $data['row'] = $check;

        if ($check) {
            return view('auth.login', $data);
        }else{
            return redirect('https://pilkatos.tech');
        }
    }

    /**
     * Handle a login request to the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    /**
     * Validate the user login request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return void
     */
    protected function validateLogin(Request $request)
    {
        $this->validate($request, [
            $this->username() => 'required|string',
            'password' => 'required|string',
            'cms_users_id' => 'required|string',
        ]);
    }

    /**
     * Attempt to log the user into the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return bool
     */
    protected function attemptLogin(Request $request)
    {
        return $this->guard()->attempt(
            $this->credentials($request), $request->has('remember')
        );
    }

    /**
     * Get the needed authorization credentials from the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    protected function credentials(Request $request)
    {
        return ['username' => $request->{$this->username()}, 'password' => $request->password, 'cms_users_id' => $request->cms_users_id, 'status' => 0];
    }

    /**
     * Send the response after the user was authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    protected function sendLoginResponse(Request $request)
    {
        $request->session()->regenerate();

        $this->clearLoginAttempts($request);

        return $this->authenticated($request, $this->guard()->user())
        ?: redirect()->intended($this->redirectPath());
    }

    /**
     * The user has been authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function authenticated(Request $request, $user)
    {
        //
    }

    /**
     * Get the failed login response instance.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    protected function sendFailedLoginResponse(Request $request)
    {
        $errors = [$this->username() => trans('auth.failed')];

        if ($request->expectsJson()) {
            return response()->json($errors, 422);
        }

        $user = DB::table('users')->where('username', $request->username)->first();
        if (!$user) {
            return redirect()->back()
            ->withInput($request->only($this->username()))
            ->withErrors([
                $this->username() => trans('auth.failed'),
            ]);
        }elseif (!Hash::check($request->password, $user->password)) {
            return redirect()->back()
            ->withInput($request->only($this->username()))
            ->withErrors([
                'password' => trans('auth.failed'),
            ]);
        }elseif (Hash::check($request->password, $user->password) && $user->status == 1) {
            return redirect()->back()
            ->withInput($request->only($this->username()))
            ->withErrors([
                'status' => trans('auth.failed'),
            ]);
        }
    }

    /**
     * Get the login username to be used by the controller.
     *
     * @return string
     */
    public function username()
    {
        return 'username';
    }

    /**
     * Log the user out of the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function logout(Request $request)
    {
        $path = DB::table('cms_users')->where('id', Auth::user()->cms_users_id)->first()->path;
        $this->guard()->logout();

        $request->session()->invalidate();

        if($path){
            Session::flash('logout-message','Terimakasih Telah Berpartisipasi!');
            return redirect($path.'/login');
        }else{
            return redirect('https://pilkatos.tech');
        }
        
    }

    /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }
}
