<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminUserController extends Controller
{
    public function getStudents() {

        $students = DB::table('admin_users')
            ->whereIn('id', function ($query) {
                $query->select('user_id');
                $query->from('admin_role_users');
                $query->where('role_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_roles');
                    $query->where('slug', config('admin.database.role_student'));
                });
            })
            ->whereNotIn('id', function ($query) {
                $query->select('student_id');
                $query->from('student_squad');
            });
        $students_collection = $students->get(['id', DB::raw('name as text')]);

        return $students_collection;
    }

    public function getTeachers() {

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
            ->whereNotIn('id', function ($query) {
                $query->select('teacher_id');
                $query->from('teachers_courses');
            });
        $teachers_collection = $teachers->get(['id', DB::raw('name as text')]);

        return $teachers_collection;
    }
}
