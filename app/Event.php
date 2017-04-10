<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = ['event_title', 'event_description', 'event_location', 'event_date', 'event_time'];

}
