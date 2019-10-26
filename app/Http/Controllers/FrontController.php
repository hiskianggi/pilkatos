<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Carbon\Carbon;
use CRUDBooster;
use Hash;

class FrontController extends Controller
{
    public function getIndex(){
    	$data['page_title'] = 'Daftar Kandidat';
    	$data['user'] =  DB::table('users')->where('id', Auth::user()->id)->first();
    	$data['candidate'] = DB::table('candidate')
    	->select('candidate.id','candidate.name','class.name as class','candidate.photo')
    	->join('class','candidate.class_id','=','class.id')
    	->where('candidate.cms_users_id', Auth::user()->cms_users_id)
    	->get();
        $data['this_year'] = Carbon::now()->format('Y');
        $data['next_year'] = Carbon::now()->addYears(1)->format('Y');

        return view('home', $data);
    }

    public function postData(Request $request){
    	$data['users_id'] = $request->users_id;
        $data['candidate_id'] = $request->candidate_id;
        $data['cms_users_id'] = $request->cms_users_id;

        $check = DB::table('election_data')->where('users_id', $request->users_id)->first();

        if (!$check) {
            $save = DB::table('election_data')->insert($data);
            DB::table('users')->where('id', $request->users_id)->update(['status' => 1]);
        }else{
            $save = [];
        }
        
        return response()->json($save);
    }

    public function getForgot($token){
        $data_token = DB::table('password_token')->where('token',$token)->first();
        $data['page_title'] = "Set New Password";
        $data['token'] = $token;
        if ($data_token) {
            $data['user'] = DB::table('users')->where('email', $data_token->email)->first();
        }else{
            $data['user'] = [];
        }

        return view('auth.forgot', $data);
    }

    public function postForgot(Request $request){
        $password = $request->password;
        $password_confirmation = $request->password_confirmation;

        if ($password == $password_confirmation) {
            $token = DB::table('password_token')->where('token',$request->token)->first();
            if ($token) {
                $save['password'] = Hash::make($password_confirmation);
                DB::table('users')->where('email', $token->email)->update($save);
                DB::table('password_token')->where('email', $token->email)->delete();

                $data['status'] = 'success';
                $data['message'] = 'Password Berhasil Dibuat!';
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Token is Invalid!';
            }
        }else{
            $data['status'] = 'error';
            $data['message'] = 'Password Confirmation is Not Same!';
        }

        return response()->json($data);
    }
}
