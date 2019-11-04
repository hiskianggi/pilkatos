<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;

class AdminPengaturanController extends \crocodicstudio\crudbooster\controllers\CBController {
	public function getIndex(){
		$data['page_title'] = 'Pengaturan';
		$data['background'] = DB::table('login_background')->where('cms_users_id',CRUDBooster::myId())->first();

		return view('backend.settings',$data);
	}

	public function postData(){
		$photo = CRUDBooster::uploadFile('photo');
		if ($photo) {
			DB::table('login_background')->where('cms_users_id',CRUDBooster::myId())->update(['photo' => $photo]);
		}
		

		Session::flash('message-success','Data Berhasil Disimpan!');
		return redirect(CRUDBooster::mainPath());
	}
}