<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use JWTAuth;
use Tymon\JWTAuthExceptions\JWTException;

class AuthenticateController extends Controller
{

  private $user;
    public function __construct(User $user)
    {
      $this->user = $user;
    }
    public function register(RegisterRequest $request)
    {
      $newUser = $this->user->create([
        ‘name’ => $request->get(‘name’),
        ‘email’ => $request->get(‘email’),
        ‘password’ => bcrypt($request->get(‘password’))
      ]);
      if (!$newUser) {
        return response()->json([‘failed_to_create_new_user’], 500);
      }
      //TODO: implement JWT
      return response()->json([‘user_created’]);
    }
    public function login(LoginRequest $request)
    {

    }
}
