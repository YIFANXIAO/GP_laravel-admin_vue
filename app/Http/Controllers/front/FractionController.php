<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FractionController extends BaseController
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getFractionDetailView($id)
    {
        if ($this->isStudent()) {
            return view("fraction_detail_student", ['id' => $id]);
        }else if ($this->isTeacher()) {
            return view("fraction_detail_teacher", ['id' => $id]);
        }else {

        }

    }

    public function getFormulaLeftDatas(Request $request) {

        $course_id = 1;

        if ($this->isStudent()) {
            // 根据课程id，计算该学生各项分数的成绩，统一做成数组返回前端，前端根据数组渲染页面



        }elseif ($this->isTeacher()) {

        }else {

        }

    }
}
