<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BaseController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function isStudent() {
        // 首先获取当前（前端）用户的email，同后端用户表对比，校验所属角色是否为学生
        $student = DB::table('student_squad')
            ->where('student_id', $this->getAdminIdByUserId()->id)
            ->first();

        if ($student == null) {
            return false;
        }else {
            return true;
        }
    }

    public function isTeacher() {
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

        if ($teacher == null) {
            return false;
        }else {
            return true;
        }
    }

    // 前后台转换函数，根据前台的auth：id,根据email=username的规则，获取对应的后端用户id
    public function getAdminIdByUserId() {
        $adminId = DB::table("admin_users")
            ->whereIn('username', function ($query) {
                $query->select('email');
                $query->from('users');
                $query->where('id', Auth::id());
            })
            ->first();
        return $adminId;
    }

}
