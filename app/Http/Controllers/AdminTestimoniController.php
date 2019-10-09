<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminTestimoniController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function getIndex(){
	    	$data['page_title'] = 'Testimoni';
	    	$data['data'] = DB::table('testimonials')->where('cms_users_id', CRUDBooster::myId())->first();

	    	return view('backend.testimoni', $data);
	    }

	    public function postData(){
	    	$save['name'] = g('name');
	    	$save['content'] = g('content');

	    	$check = DB::table('testimonials')->where('cms_users_id', CRUDBooster::myId())->first();
	    	if($check){
	    		DB::table('testimonials')->where('cms_users_id', CRUDBooster::myId())->update($save);
	    		Session::flash('message-success','Data Berhasil Diupdate!');
	    	}else{
	    		DB::table('testimonials')->where('cms_users_id', CRUDBooster::myId())->insert([
	    			'cms_users_id' => CRUDBooster::myId(),
	    			'name' => g('name'),
	    			'content' => g('content')
	    		]);
	    		Session::flash('message-success','Data Berhasil Disimpan!');
	    	}

	    	return redirect(CRUDBooster::mainPath());
	    }

	    public function getDel(){
	    	DB::table('testimonials')->where('cms_users_id',CRUDBooster::myId())->delete();

	    	Session::flash('message-success','Data Berhasil  Dihapus!');
	    	return redirect(CRUDBooster::mainPath());
	    }
	}