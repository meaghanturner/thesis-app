<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use JWTAuth;

class EventController extends Controller
{

  // public function __construct()
  //    {
  //        // Apply the jwt.auth middleware to all methods in this controller, except auth method
  //
  //        $this->middleware('jwt.auth', ['except' => ['authenticate']]);
  //    }

  public function showAll(){
    $events = Event::all();
    //below for JWT tokens when working
    // $events = Event::all();
    // $response =[
    //   'events' => $events
    // ];
    // return response()->json($response, 200);
  return $events->toArray();
}

  public function showOne($event) //find wildcard
    {
    //$event = Event::find($event);
    // $event = DB::select('SELECT * FROM events WHERE id='.$id);
   // 	return Response::json($event);
     return Event::find($event);

    }

    public function store(Request $request) {
  $user = JWTAuth::parseToken()->toUser();
        $event = new Event();
        $event->event_title = $request->input('event_title', false);
        $event->event_description = $request->input('event_description', false);
        $event->event_location = $request->input('event_location', false);
        $event->event_date = $request->input('event_date', false);
        $event->event_time = $request->input('event_time', false);
        $event->save();

        return response()->json(['event'=>$event, 'user'=>$user], 201);
        //return 'Event record successfully created';
    }
    public function edit(Request $request, $id) {
      //  $event = Event::find($id);
      //  return "Found event " . $event->id;
      return Event::find($id);
    }
   //
  //   public function update(Request $request, $id) {
  //      $event = Event::find($id);
   //
  //      $event->event_title = $request->input('event_title', false);
  //      $event->event_description = $request->input('event_description', false);
  //      $event->event_location = $request->input('event_location', false);
  //      $event->event_date = $request->input('event_date', false);
  //      $event->event_time = $request->input('event_time', false);
  //      $event->save();
   //
  //      return "Success updating event #" . $event->id;
  //  }

   public function delete(Request $request, $id) {
     //$event = Event::find($request->input('id'));
        $event = Event::find($id);
        $event->delete();

        return "Event record successfully deleted #" . $request->input('id');
    }
}
