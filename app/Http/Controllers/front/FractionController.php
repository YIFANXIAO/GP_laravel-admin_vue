<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

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
//            $formulaLefts = DB::table('formula_left')
//                ->select('formula_left.id', 'formula_left.name', 'formula_left.course_id', 'formula_left.pid')
//                ->where('course_id', $course_id)
//                ->get();
//
//            foreach ($formulaLefts as $key => $value) {
//                // 计算每个公式左部，对应的总成绩
//
//
//                dump($value->id);
//            }

//            dd($formulaLefts);

//            $collection = collect();

//            if ($collection->contains('9')) {
//                $collection->push(4);
//            }else {
//                $collection->push(5);
//            };

//            dd($collection);


        }elseif ($this->isTeacher()) {

        }else {

        }

    }
}
