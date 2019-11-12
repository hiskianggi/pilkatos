<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use CB;

	class AdminReportController extends \crocodicstudio\crudbooster\controllers\CBController {

		public function getIndex(){
			$data['page_title'] = 'Laporan';
			$data['total_voters'] = number_format(DB::table('users')->where('cms_users_id',CRUDBooster::myId())->count());
			$data['in_come'] = DB::table('users')
			->where('cms_users_id',CRUDBooster::myId())
			->where('status',1)
			->count();
			$data['in_come_persen'] = round($data['in_come'] / $data['total_voters'] * 100, 1);
			$data['golput'] = CB::totalGolput();
			$data['golput_persen'] = round($data['golput'] / $data['total_voters'] * 100, 1);

			$data['statistic'] = DB::table('candidate')
			->join('class','candidate.class_id','=','class.id')
			->select('candidate.id','candidate.name','class.name as class','candidate.id as total_vote')
			->get();
			foreach ($data['statistic'] as $key => $v) {
				$total_vote = DB::table('election_data')->where('candidate_id',$v->id)->count();
				$v->total_vote = $total_vote;
			}

			return view('backend.report', $data);
		}

	}