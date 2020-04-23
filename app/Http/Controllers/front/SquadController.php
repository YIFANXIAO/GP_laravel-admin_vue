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

    public function getSquadByUser(Request $request) {

        $squadPageData = $request->get("squadPageData");

        $perPage = array_get($squadPageData, 'row');
        $columns = ['*'];
        $pageName = 'page';
        $currentPage = array_get($squadPageData, 'page');

        $squad_name = array_get($squadPageData, 'squad_name');
        $profession_name = array_get($squadPageData, 'profession_name');

        if (self::isStudent()) {
            $squads = DB::table('squad')
                ->leftJoin('professions', 'squad.profession_id', '=', 'professions.id')
                ->select('squad.id', 'squad.name', 'squad.info', 'squad.updated_at', 'professions.full_name as profession_name')
                ->whereIn('squad.id', function ($query) {
                    $query->select('squad_id');
                    $query->from('student_squad');
                    $query->where('student_id', $this->getAdminIdByUserId()->id);
                })
                ->when(($squad_name != null && $squad_name != ''), function ($query) use ($squad_name) {
                    return $query->where('squad.name', 'like', "%{$squad_name}%");
                })
                ->when(($profession_name != null && $profession_name != ''), function ($query) use ($profession_name) {
                    return $query->where('professions.full_name', 'like', "%{$profession_name}%");
                })
                ->paginate($perPage, $columns, $pageName, $currentPage);
        }else if (self::isTeacher()) {
            $squads = DB::table('squad')
                ->leftJoin('professions', 'squad.profession_id', '=', 'professions.id')
                ->select('squad.id', 'squad.name', 'squad.info', 'squad.updated_at', 'professions.full_name as profession_name')
                ->when(($squad_name != null && $squad_name != ''), function ($query) use ($squad_name) {
                    return $query->where('squad.name', 'like', "%{$squad_name}%");
                })
                ->when(($profession_name != null && $profession_name != ''), function ($query) use ($profession_name) {
                    return $query->where('professions.full_name', 'like', "%{$profession_name}%");
                })
                ->paginate($perPage, $columns, $pageName, $currentPage);
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

        $studentPageData = $request->get("studentPageData");
        $squad_id = array_get($studentPageData, 'squad_id');
        $perPage = array_get($studentPageData, 'row');
        $columns = ['*'];
        $pageName = 'page';
        $currentPage = array_get($studentPageData, 'page');

        $name = array_get($studentPageData, 'name');
        $username = array_get($studentPageData, 'username');

        $students = DB::table('admin_users')
            ->leftJoin('student_squad', 'admin_users.id', '=', 'student_squad.student_id')
            ->leftJoin('squad', 'student_squad.squad_id', '=', 'squad.id')
            ->select('admin_users.name', 'admin_users.username', 'admin_users.created_at', 'squad.name as squad_name')
            ->whereIn('admin_users.id', function ($query) use ($squad_id) {
                $query->select('student_id');
                $query->from('student_squad');
                $query->where('squad_id', $squad_id);
            })
            ->when(($name != null && $name != ''), function ($query) use ($name) {
                return $query->where('admin_users.name', 'like', "%{$name}%");
            })
            ->when(($username != null && $username != ''), function ($query) use ($username) {
                return $query->where('admin_users.username', 'like', "%{$username}%");
            })
            ->paginate($perPage, $columns, $pageName, $currentPage);

        return $students;
    }
}
