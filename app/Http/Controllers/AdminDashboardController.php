<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;
use CB;

class AdminDashboardController extends \crocodicstudio\crudbooster\controllers\CBController {

	public function getIndex(){
		$color = array('#007bff',
			'#fd7e14',
			'#28a745',
			'#dc3545',
			'#6610f2',
			'#ffc107');
		if (CRUDBooster::myPrivilegeId() != 1) {
			$data['page_title'] = "Dashboard";
			$kandidat = DB::table('candidate')->where('cms_users_id',CRUDBooster::myId())->get();
			$data['j_kandidat'] = $kandidat->count();
			$data['pemilih'] = DB::table('users')->where('cms_users_id',CRUDBooster::myId())->get()->count();
			$data['suara_masuk'] = DB::table('election_data')->where('cms_users_id',CRUDBooster::myId())->get()->count();
			$data['golput'] = $data['pemilih'] - $data['suara_masuk'];
			foreach ($kandidat as $key => $k) {
				$k->color = $color[$key];
				$k->total = DB::table('election_data')
				->where('cms_users_id',CRUDBooster::myId())
				->where('candidate_id',$k->id)
				->count();
			}
			
			$data['kandidat'] = $kandidat;
			return view('backend.dashboard-client',$data);
		}else{
			$data['page_title'] = "Admin Dashboard";
			$data['agenda'] = DB::table('agenda')
			->where('cms_users_id',CRUDBooster::myId())
			->whereDate('date', date('Y-m-d'))
			->orderBy('time_start','asc')
			->get();
			$data['new_users'] = DB::table('cms_users')
			->where('id_cms_privileges','!=','1')
			->orderBy('created_at','desc')
			->limit(5)
			->get();
			$data['map'] = DB::table('cms_users')
			->where('id_cms_privileges','!=','1')
			->get();
			$data['first_lat'] = DB::table('cms_users')
			->where('id_cms_privileges','!=','1')
			->orderBy('created_at','desc')
			->first()->lat;
			$data['first_long'] = DB::table('cms_users')
			->where('id_cms_privileges','!=','1')
			->orderBy('created_at','desc')
			->first()->lng;
			return view('backend.dashboard-server',$data);
		}
		
	}

}