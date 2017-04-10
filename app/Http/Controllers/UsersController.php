<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DB;
use Response;

class UsersController extends Controller
{


public function index(){
  $users = User::all();
  return $users->toArray();
}
public function show($id) //find wildcard
    {
    //$event = Event::find($event);
    $user = DB::select('SELECT * FROM users WHERE id='.$id);
    return Response::json($user);
    }

    public function create()
    {

    }

    public function store()
   {

    }
}
