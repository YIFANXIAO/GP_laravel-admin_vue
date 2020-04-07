<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CourseTypeController extends Controller
{
    public function getCourseTypes() {

        $course_type = DB::table('courses_types_constant');
        $course_type_collection = $course_type->get(['id', DB::raw('name as text')]);

        return $course_type_collection;
    }
}
