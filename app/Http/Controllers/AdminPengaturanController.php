<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminPengaturanController extends \crocodicstudio\crudbooster\controllers\CBController {
			public function getIndex(){
				$data['page_title'] = 'Pengaturan';
				$data['detail'] = DB::table('cms_users')->where('id',CRUDBooster::myId())->get();
				$data['background'] = DB::table('login_background')->where('id',CRUDBooster::myId())->get();

				return view('backend.settings',$data);
			}
	}