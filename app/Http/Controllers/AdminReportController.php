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

			$winner = DB::table('candidate')
			->select('candidate.id',DB::raw("COUNT(election_data.id) as total_votes"))
			->where('candidate.cms_users_id',CRUDBooster::myId())
			->join('election_data','election_data.candidate_id','=','candidate.id')
			->groupBy('candidate.id')
			->orderBy('total_votes','desc')
			->first();

			$data['winner_votes'] = $winner->total_votes;
			$data['winner_votes_persen'] = round($data['winner_votes'] / $data['total_voters'] * 100, 1);

			$winner = DB::table('candidate')->where('id', $winner->id)->first();
			$winner->students = CB::statisticCandidate($winner_id,'students');

			dd($winner);


			return view('backend.report', $data);
		}

	}