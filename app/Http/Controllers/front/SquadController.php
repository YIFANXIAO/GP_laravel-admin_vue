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
        $student = DB::table('student_squad')
            ->whereIn('student_id', function ($query) {
                $query->select('id');
                $query->from('admin_users');
                $query->whereIn('username', function ($query) {
                    $query->select('email');
                    $query->from('users');
                    $query->where('id', Auth::id());
                });
            })
            ->first();

        // 判断当前登录用户，关联的后端用户，关联的角色是否是教师
        $teacher = DB::table('admin_users')
            ->whereIn('username', function ($query) {
                $query->select('email');
                $query->from('users');
                $query->where('id', Auth::id());
            })
            ->whereIn('id', function ($query) {
                $query->select('user_id');
                $query->from('admin_role_users');
                $query->whereIn('role_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_roles');
                    $query->where('slug', 'teacher');
                });
            })
            ->first();

        if ($student != null) {
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
        }else if ($teacher != null) {
            $squads = DB::table('squad')
                ->get();
        }else{
            $squads = null;
        }

        return $squads;
    }
}
