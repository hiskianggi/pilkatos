<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;

class AdminStatisticController extends \crocodicstudio\crudbooster\controllers\CBController {

	public function getIndex(){
		$data['page_title'] = "Statistic";
		if (g('id')) {
			$id = g('id');
		}else{
			$id = 2;
		}
		$data['user'] = DB::table('cms_users')->where('id',$id)->first();
		$color = array('#007bff',
			'#fd7e14',
			'#28a745',
			'#dc3545',
			'#6610f2',
			'#ffc107');
		$kandidat = DB::table('candidate')->where('cms_users_id',$id)->get();
		$data['j_kandidat'] = $kandidat->count();
		$data['pemilih'] = DB::table('users')->where('cms_users_id',$id)->get()->count();
		$data['suara_masuk'] = DB::table('election_data')->where('cms_users_id',$id)->get()->count();
		$data['golput'] = $data['pemilih'] - $data['suara_masuk'];
		foreach ($kandidat as $key => $k) {
			$k->color = $color[$key];
			$k->total = DB::table('election_data')
			->where('cms_users_id',$id)
			->where('candidate_id',$k->id)
			->count();
		}

		$data['kandidat'] = $kandidat;
		return view('backend.dashboard-client',$data);
		
	}

}
