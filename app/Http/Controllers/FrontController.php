<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;

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

    	return view('home', $data);
    }

    public function postData(Request $request){
    	
    }
}
