<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::group(['middleware'=>'auth'], function(){
	Route::get('/', 'FrontController@getIndex');
	Route::get('/postdata', 'FrontController@postData');
});

Route::get('/{path}/login', 'Auth\LoginController@showLoginForm');
Route::post('login', 'Auth\LoginController@login');
Route::get('logout', 'Auth\LoginController@logout');
// Route::get('qrcode', function () {
// 	$data['email'] = '11700599';
// 	$data['password'] = 'Glory45#';
// 	$data['cms_users_id'] = '2';

// 	$response = json_encode($data);
// 	$image = QrCode::format('png')
//     ->merge('images/logo.png', 0.3, true)
//     ->size(500)->errorCorrection('H')
// 	->generate($response);

// 	return '<img src="data:image/png;base64, '.base64_encode($image).'">';
// });