<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FormulaLeftController extends Controller
{
    // 创建状态下，返回父节点列表
    public function getCreatPFormula(Request $request) {

        $course = $request->get('q');

        $pFormula = DB::table('formula_left')
            ->where('Pid', 0)
            ->where('course_id', $course)
            ->get();

        if ($pFormula->isEmpty()) {
            $pFormula_collection = (['data' => ['id' => 0, 'text' => '无父结点']]);
        }else {
            $pFormula_collection = DB::table('formula_left')
                ->where('Pid', 0)
                ->where('course_id', $course)
                ->get(['id', DB::raw('name as text')]);
        }

        return $pFormula_collection;
    }

    // 编辑状态下，返回公式父节点列表
    public function getEditPFormula(Request $request) {

//        $course = $request->get('q');

        $pFormula = DB::table('formula_left')
            ->where('Pid', 0)
//            ->where('course_id', $course)
            ->get(['id', DB::raw('name as text')]);

        $pFormula_collection = (['0' => ['id' => 0, 'text' => '无父结点']]);

        $result = array_merge($pFormula_collection, $pFormula->toArray());

        return $result;
    }

    //根据父节点的id，返回公式元计算项
    public function getMetaCalType() {

        $resultMetaCalType = DB::table('meta_cal_type')
            ->get(['id', DB::raw('name as text')]);

        return $resultMetaCalType;
    }

}
