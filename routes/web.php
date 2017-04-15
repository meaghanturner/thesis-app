<?php


use App\Event;
use App\User;
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

Route::get('/', function () {
    return view('welcome');
});

///////////// EVENTS /////////////
Route::get('/events', [
  'as' => 'events',
  'uses' => 'EventController@showAll',

]);

Route::get('/events/{id}', [
  'as' => 'events/{id}',
  'uses' => 'EventController@showOne',
]);

Route::post('/events/posts',[
  'as' => 'events/posts',
  'uses' => 'EventController@store',
  'middleware' => 'auth.jwt'
]);

Route::get('/events/edit/{id}',[
  'as' => 'events/edit/{id}',
  'uses' => 'EventController@edit',
  'middleware' => 'auth.jwt'
]);

// Route::post('/events/update/{id}',[
//   'as' => 'events/edit/{id}',
//   'uses' => 'EventController@update',
// ]);

Route::delete('/events/delete/{id}',[
  'as' => 'events/delete/{id}',
  'uses' => 'EventController@delete',
  'middleware' => 'auth.jwt'
]); //destroy one


///////////// USERS /////////////
Route::post('/signup', [
	'as' => 'signup',
	'uses' => 'UserController@signup',

	]);
Route::post('/login', [
	'as' => 'login',
	'uses' => 'UserController@login'
	]);
