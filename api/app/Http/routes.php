<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
if (isset($_SERVER['HTTP_ORIGIN'])) {
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Allow-Origin: '.$_SERVER['HTTP_ORIGIN']);
	header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS, PATCH');
	header('Access-Control-Allow-Headers: Origin, Content-Type, Accept, Authorization, useXDomain, withCredentials');
	//header('Keep-Alive: timeout=10, max=100');
}
// Route::get('/', function () {
    // return Response::json(array('hello' => 'hehe'));
// });

//Route::resource('authenticate', 'AuthenticateController', ['only' => ['index']]);
Route::group(['middleware' => 'cors'], function()
{	
	// Session //
	Route::get('session','AuthenticateController@index');
	Route::post('session', 'AuthenticateController@authenticate');
	Route::get('session/debug', 'AuthenticateController@debug');
	Route::delete('session', 'AuthenticateController@destroy');
	
	
	
	// Voter  //
	Route::get('voter', 'VoterController@index');
	Route::post('voter', 'VoterController@store');
	Route::get('voter/check_duplicate_name', 'VoterController@checkDupliCateName');
	Route::get('voter/check_duplicate_id_card', 'VoterController@checkDupliCateIdCard');
	
	
	Route::get('voter/{voter_id}', 'VoterController@show');
	Route::patch('voter/{voter_id}', 'VoterController@update');
	Route::delete('voter/{voter_id}', 'VoterController@destroy');	

	
	
	

	//profile
	Route::get('profile/index','ProfileController@index');
	Route::get('profile/military_rank','ProfileController@military_rank');

	Route::get('profile/get_demarcate_and_admin','ProfileController@get_demarcate_and_admin');
	Route::get('profile/get_canvasser_only','ProfileController@get_canvasser_only');
	Route::get('profile/get_demarcate_list','ProfileController@get_demarcate_list');
	


	
	
	
	Route::post('profile', 'ProfileController@store');
	Route::get('profile/{id}', 'ProfileController@show');
	Route::patch('profile/{id}', 'ProfileController@updateNew');
	Route::delete('profile/{id}', 'ProfileController@destroy');	

	

	
	Route::get('404', ['as' => 'notfound', function () {
		return response()->json(['status' => '404']);
	}]);

	Route::get('405', ['as' => 'notallow', function () {
		return response()->json(['status' => '405']);
	}]);	
});



