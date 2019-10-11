<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminReportController extends \crocodicstudio\crudbooster\controllers\CBController {

		public function getIndex(){
			$data['page_title'] = 'Laporan';

			return view('backend.report', $data);
		}

	}