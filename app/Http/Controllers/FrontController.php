<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function getIndex(){
    	$data['page_title'] = 'Daftar Kandidat';

    	return view('home', $data);
    }
}
