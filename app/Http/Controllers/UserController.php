<?php

namespace App\Http\Controllers;

use App\User;
use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Providers\User\EloquentUserAdapter;
use JWTAuth;

use Response;

class UserController extends Controller
{
  public function signup(Request $request){

  $validator = Validator::make($request->all(), [
    'name'=>'required',
    'email'=>'required|email|unique:users',
    'password'=>'required'
      ]);
      if ($validator->fails()) {
          return response()->json(['error' => $validator->messages(), 'status' => 422]);
      }
  $newUser = new User([
    'name'=> $request->input('name'),
    'email'=> $request->input('email'),
    'password'=> bcrypt($request->input('password'))
  ]);
  $newUser->save();
  $token = JWTAuth::fromUser($newUser);
  return response()->json([
          'token' => $token,
          'message' => 'New User has been created',
          'status' => 200
      ]);

}
/**
 * Login for User that already exists
 * @param  Request
 * @return Response
 */
public function login(Request $request)
{
  $validator = Validator::make($request->all(), [
        'email'=>'required|email',
    'password'=>'required'
      ]);
  $credentials = $request->only('email', 'password');
  try {
    if ($validator->fails()) {
            return response()->json(['error' => $validator->messages(), 'status' => 422]);
        }
      else if (!$token = JWTAuth::attempt($credentials)){
        return response()->json([
          'error'=>'You credentials are invalid!', 'status' => 422
          ]);
    }
  } catch (JWTException $e){
      return response()->json([
        'error'=>'Sorry we could not create token!',  'status' => 422
        ]);
  }
  return response()->json([
    'token' => $token,
    ], 200);
}
}
