<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CourseController extends Controller
{
    public function getCurrentCourse($course_id) {

        $course = DB::table('courses')
            ->where('id', $course_id);
        $course_collection = $course->get(['id', DB::raw('full_name as text')]);

        return $course_collection;
    }

    public function getCourses() {

        $course = DB::table('courses');
        $course_collection = $course->get(['id', DB::raw('full_name as text')]);

        return $course_collection;
    }
}
