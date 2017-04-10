<?php


use App\Event;
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

// EVENTS
Route::get('/events', 'EventController@index'); //show all
Route::get('/events/{id}', 'EventController@show'); //show one
Route::post('/events/posts', 'EventController@store'); //save one
Route::get('/events/edit/{id}', 'EventController@edit'); //get info of one
// Route::post('/events/update/{id}', 'EventController@update'); //update one
Route::delete('/events/delete/{id}', 'EventController@delete'); //destroy one


// USERS
Route::get('/users', 'UsersController@index');
Route::get('/users/{id}', 'UsersController@show');
