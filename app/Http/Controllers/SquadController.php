<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SquadController extends Controller
{
    public function getCurrentSquads($squad_id) {

        $squads = DB::table('squad')
            ->where('id', $squad_id);
        $squads_collection = $squads->get(['id', DB::raw('name as text')]);

        return $squads_collection;
    }

    public function getSquads() {

        $squads = DB::table('squad');
        $squads_collection = $squads->get(['id', DB::raw('name as text')]);

        return $squads_collection;
    }
}
