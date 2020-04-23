<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\front\SquadController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CourseController extends BaseController
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getCoursesView()
    {
        return view("courses");
    }

    public function getCoursesInfoByUser(Request $request) {

        $coursePageData = $request->get("coursePageData");
        $perPage = array_get($coursePageData, 'row');
        $columns = ['*'];
        $pageName = 'page';
        $currentPage = array_get($coursePageData, 'page');

        $full_name = array_get($coursePageData, 'full_name');
        $attribute = array_get($coursePageData, 'attribute');

        if (self::isStudent()) {
            // 角色是学生，则返回当前学生，对应的班级，对应的课程信息
            $courses = DB::table('courses')
                ->leftJoin('courses_types_constant', 'courses.courses_type_id', '=', 'courses_types_constant.id')
                ->select('courses.id', 'courses.full_name', 'courses.attribute', 'courses.credit', 'courses.location', 'courses.Schedule_text', 'courses_types_constant.name as course_type_name')
                ->whereIn('courses.id', function ($query) {
                    $query->select('course_id');
                    $query->from('squads_courses');
                    $query->whereIn('squad_id', function ($query) {
                        $query->select('squad_id');
                        $query->from('student_squad');
                        $query->where('student_id', $this->getAdminIdByUserId()->id);
                    });
                })
                ->when(($full_name != null && $full_name != ''), function ($query) use ($full_name) {
                    return $query->where('courses.full_name', 'like', "%{$full_name}%");
                })
                ->when(($attribute != null && $attribute != ''), function ($query) use ($attribute) {
                    return $query->where('courses.attribute', 'like', "%{$attribute}%");
                })
                ->paginate($perPage, $columns, $pageName, $currentPage);
        }else if (self::isTeacher()) {
            // 角色是老师，则返回当前教师，对应教授的课程信息
            $courses = DB::table('courses')
                ->leftJoin('courses_types_constant', 'courses.courses_type_id', '=', 'courses_types_constant.id')
                ->select('courses.id', 'courses.full_name', 'courses.attribute', 'courses.credit', 'courses.location', 'courses.Schedule_text', 'courses_types_constant.name as course_type_name')
                ->whereIn('courses.id', function ($query) {
                    $query->select('course_id');
                    $query->from('teachers_courses');
                    $query->where('teacher_id',  $this->getAdminIdByUserId()->id);
                })
                ->when(($full_name != null && $full_name != ''), function ($query) use ($full_name) {
                    return $query->where('courses.full_name', 'like', "%{$full_name}%");
                })
                ->when(($attribute != null && $attribute != ''), function ($query) use ($attribute) {
                    return $query->where('courses.attribute', 'like', "%{$attribute}%");
                })
                ->paginate($perPage, $columns, $pageName, $currentPage);
        }else{
            // 如果是游客，不返回任何信息
            $courses = null;
        }

        return $courses;
    }
}
