<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;

class ApiLoginController extends \crocodicstudio\crudbooster\controllers\ApiController {

	function __construct() {    
		$this->table       = "users";        
		$this->permalink   = "login";    
		$this->method_type = "get";    
	}


	public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		$username		= $postdata['username'];
		$password		= $postdata['password'];
		$cms_users_id   = $postdata['cms_users_id'];

		$user = DB::table('users')
		->where('username',$username)
		->where('cms_users_id',$cms_users_id)
		->first();

		if ($users) {
			if (Hash::check($password, $users->password)) {
				$data['id'] = $user->id;
				$data['username'] = $user->username;
				$data['name'] = $user->name;
				$data['info'] = ''; 
				$data['cms_users_id'] = $user->cms_users_id;

				$response['api_status']        = 1;
				$response['api_message']       = 'Success!';
				$response['api_authorization'] = 'You are in debug mode !';
				$response['api_http']          = 200;
				$response['data']              = $materi;
			}else{
				$response['api_status']        = 0;
				$response['api_message']       = 'Wrong Password!';
				$response['api_authorization'] = 'You are in debug mode !';
				$response['api_http']          = 200;
			}
		}else{
			$response['api_status']        = 0;
			$response['api_message']       = 'Account Not Found!';
			$response['api_authorization'] = 'You are in debug mode !';
			$response['api_http']          = 200;
		}

		response()->json($response)->send();
		exit;
	}

	public function hook_query(&$query) {
		        //This method is to customize the sql query

	}

	public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

	}

}