<?php 
namespace crocodicstudio\crudbooster\helpers;

use Session;
use Request;
use Schema;
use Cache;
use DB;
use Route;
use Validator;

class CB extends CRUDBooster  {
	//This CB class is for alias of CRUDBooster class
	public static function checkSecurity(){
		$cms_users = DB::table('cms_users')->where('id', CRUDBooster::myId())->first();

		return $cms_users->with_email;
	}

	public static function totalBalance(){
		$in = DB::table('finance')->where('type','IN')->sum('price');
		$out = DB::table('finance')->where('type','OUT')->sum('price');

		$result = $in - $out;
		return $result;
	}

	public static function totalTurnOut($get){
		if ($get == 'students') {
			$type = 0;
		}elseif ($get == 'teachers') {
			$type = 1;
		}else{
			$type = 2;
		}

		if (CRUDBooster::myPrivilegeId() == 1) {
			$result = DB::table('users')->where('type', $type)->count();
		}else{
			$result = DB::table('users')->where(['type' => $type, 'cms_users_id' => CRUDBooster::myId()])->count();
		}

		return $result;
	}

	public static function totalGolput($get = NULL){
		if ($get == 'students') {
			$type = 0;
		}elseif ($get == 'teachers') {
			$type = 1;
		}elseif ($get == 'employees'){
			$type = 2;
		}

		if (CRUDBooster::myPrivilegeId() == 1) {
			if ($get == NULL) {
				$result = DB::table('users')->where(['status' => 0])->count();
			}else{
				$result = DB::table('users')->where(['type' => $type, 'status' => 0])->count();
			}
		}else{
			if ($get == NULL) {
				$result = DB::table('users')->where(['cms_users_id' => CRUDBooster::myId(), 'status' => 0])->count();
			}else{
				$result = DB::table('users')->where(['type' => $type, 'cms_users_id' => CRUDBooster::myId(), 'status' => 0])->count();
			}
		}

		return $result;
	}
}
