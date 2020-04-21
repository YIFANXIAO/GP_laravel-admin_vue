<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SquadController extends BaseController
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getSquadsView()
    {
        return view("squads");
    }

    public function getSquadDetailView($id)
    {
        return view("squad_detail", ['id' => $id]);
    }

    public function getSquadByUser() {

        if (self::isStudent()) {
            $squads = DB::table('squad')
                ->leftJoin('professions', 'squad.profession_id', '=', 'professions.id')
                ->select('squad.name', 'squad.info', 'squad.updated_at', 'professions.full_name as profession_name')
                ->whereIn('squad.id', function ($query) {
                    $query->select('squad_id');
                    $query->from('student_squad');
                    $query->whereIn('student_id', $this->getAdminIdByUserId()->id);
                })
                ->get();
        }else if (self::isTeacher()) {
            $squads = DB::table('squad')
                ->leftJoin('professions', 'squad.profession_id', '=', 'professions.id')
                ->select('squad.name', 'squad.info', 'squad.updated_at', 'professions.full_name as profession_name')
                ->get();
        }else{
            $squads = null;
        }

        return $squads;
    }

    public function getSquadInfo(Request $request) {

        $squad_id = $request->get("squad_id");

        $squad = DB::table('squad')
            ->where('id', $squad_id)
            ->get();
        return $squad;
    }

    public function getProfessionInfo(Request $request) {

        $squad_id = $request->get("squad_id");

        $profession = DB::table('professions')
            ->whereIn('id', function ($query) use ($squad_id) {
                $query->select('profession_id');
                $query->from('squad');
                $query->where('id', $squad_id);
            })
            ->get();
        return $profession;
    }

    public function getSquadStudents(Request $request) {

        $squad_id = $request->get("squad_id");

        $students = DB::table('admin_users')
            ->leftJoin('student_squad', 'admin_users.id', '=', 'student_squad.student_id')
            ->leftJoin('squad', 'student_squad.squad_id', '=', 'squad.id')
            ->select('admin_users.name', 'admin_users.username', 'admin_users.created_at', 'squad.name as squad_name')
            ->whereIn('admin_users.id', function ($query) use ($squad_id) {
                $query->select('student_id');
                $query->from('student_squad');
                $query->where('squad_id', $squad_id);
            })
            ->get();
        return $students;
    }
}
