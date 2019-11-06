<?php 
namespace crocodicstudio\crudbooster\helpers;

use Session;
use Request;
use Schema;
use Cache;
use DB;
use Route;
use Validator;
use CRUDBooster;

class CB extends CRUDBooster  {
	//This CB class is for alias of CRUDBooster class
	public static function checkSecurity(){
		$cms_users = DB::table('cms_users')->where('id', CRUDBooster::myId())->first();

		return $cms_users->with_email;
	}

	public static function totalBalance($type = NULL){
		$in = DB::table('finance')->where('type','IN')->sum('price');
		$out = DB::table('finance')->where('type','OUT')->sum('price');

		if ($type == 'in') {
			$result = $in;
		}elseif ($type == 'out') {
			$result = $out;
		}else{
			$result = $in - $out;
		}

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

	public static function countVoters($type){
		if (!CRUDBooster::isSuperadmin()) {
			$data['cms_users_id'] = CRUDBooster::myId();
		}

		$data['type'] = $type;

		$result = DB::table('users')->where($data)->count();
		return $result;
	}

	public static function progressElection($type){
		$data['users.cms_users_id']	= CRUDBooster::myId();
		$data['users.type']			= $type;

		$all = DB::table('users')->where($data)->count();
		$election = DB::table('election_data')
		->select('users.type','users.cms_users_id')
		->join('users','election_data.users_id','=','users.id')
		->where($data)
		->count();

		if ($election == 0) {
			$result = 0;
		}else{
			$result = $election / $all * 100;
		}
		
		return round($result, 0);


	}

	public static function statisticDb($type){
		if ($type==0) {
			$result = DB::table('cms_users')->where('id_cms_privileges','!=',1)->count();
		}elseif ($type==1) {
			$result = DB::table('users')->count();
		}elseif ($type==2) {
			$result = DB::table('candidate')->count();
		}else{
			$result = DB::table('election_data')->count();
		}

		return number_format($result);
	}

	public static function isWithEmail(){
		$db = DB::table('cms_users')->where('id', CRUDBooster::myId())->first();

		return $db->with_email;
	}

	public static function statisticCandidate($id,$type){
		if ($type == 'students') {
			$type = 0;
		}elseif ($type == 'teachers') {
			$type = 1;
		}else{
			$type = 2;
		}

		$row = DB::table('candidate')
		->join('election_data','election_data.candidate_id','candidate.id')
		->join('users','election_data.users_id','=','users.id')
		->where('candidate.id', $id)
		->groupBy('candidate.id')
		->where('users.type',$type)
		->select(DB::raw('count("election_data.id") as count'))
		->first();

		return $row->count;
	}

	public static function getClass($id){
		$user = DB::table('users')->where('id',$id)->first();
		if ($user->class_id == NULL) {
			return '-';
		}else{
			$class = DB::table('class')->where('id',$user->class_id)->first();
			return $class->name;
		}
	}
}
