<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminUserController extends Controller
{
    // 查询当前未分配班级的学生
//    public function getAllocatedStudents() {
//
//        $students = DB::table('admin_users')
//            ->whereIn('id', function ($query) {
//                $query->select('user_id');
//                $query->from('admin_role_users');
//                $query->where('role_id', function ($query) {
//                    $query->select('id');
//                    $query->from('admin_roles');
//                    $query->where('slug', config('admin.database.role_student'));
//                });
//            })
//            ->whereNotIn('id', function ($query) {
//                $query->select('student_id');
//                $query->from('student_squad');
//            });
//        $students_collection = $students->get(['id', DB::raw('name as text')]);
//
//        return $students_collection;
//    }

    // 查询对应课程对应的班级的对应的学生角色的用户
    public function getDesignatedStudents(Request $request) {

        $course_id = $request->get('q');

        $students = DB::table('admin_users')
            ->whereIn('id', function ($query) {
                $query->select('user_id');
                $query->from('admin_role_users');
                $query->whereIn('role_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_roles');
                    $query->where('slug', config('admin.database.role_student'));
                });
            })
            ->whereIn('id', function ($query) use ($course_id) {
                $query->select('student_id');
                $query->from('student_squad');
                $query->whereIn('squad_id', function ($query) use ($course_id) {
                    $query->select('squad_id');
                    $query->from('squads_courses');
                    $query->where('course_id', $course_id);
                });
            });
        $students_collection = $students->get(['id', DB::raw('name as text')]);

        return $students_collection;
    }

    public function getTeachers($course_id) {

        $teachers = DB::table('admin_users')
            ->whereIn('id', function ($query) {
                $query->select('user_id');
                $query->from('admin_role_users');
                $query->where('role_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_roles');
                    $query->where('slug', config('admin.database.role_teacher'));
                });
            })
            ->whereNotIn('id', function ($query) use ($course_id) {
                $query->select('teacher_id');
                $query->from('teachers_courses');
                $query->where('course_id', $course_id);
            });
        $teachers_collection = $teachers->get(['id', DB::raw('name as text')]);

        return $teachers_collection;
    }

    public function getAllTeachers() {

        $teachers = DB::table('admin_users')
            ->whereIn('id', function ($query) {
                $query->select('user_id');
                $query->from('admin_role_users');
                $query->where('role_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_roles');
                    $query->where('slug', config('admin.database.role_teacher'));
                });
            });
        $teachers_collection = $teachers->get(['id', DB::raw('name as text')]);

        return $teachers_collection;
    }
}
