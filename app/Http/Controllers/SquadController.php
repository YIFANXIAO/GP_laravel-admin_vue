<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SquadController extends Controller
{
    public function getSquads($squad_id) {

        $squad = DB::table('squad')
            ->where('id', $squad_id);
        $squad_collection = $squad->get(['id', DB::raw('name as text')]);

        return $squad_collection;
    }
}
