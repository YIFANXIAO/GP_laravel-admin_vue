<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SquadController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getSquadsView()
    {
        return view("squad");
    }

    public function getSquadByUser(Request $request) {

        // 首先获取当前（前端）用户的email，同后端用户表对比，校验所属角色是否为学生

        $squads = DB::table('squad')
            ->whereIn('id', function ($query) {
                $query->select('squad_id');
                $query->from('student_squad');
                $query->whereIn('student_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_users');
                    $query->whereIn('username', function ($query) {
                        $query->select('email');
                        $query->from('users');
                        $query->where('id', Auth::id());
                    });
                });
            })
            ->get();

        return $squads;


        // 角色为学生则查询该学生当前所属班级

        // 角色为教师或超管则查询所有班级


    }
}
