<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Carbon\Carbon;
use CRUDBooster;

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
}
