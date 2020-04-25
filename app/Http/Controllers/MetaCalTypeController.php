<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MetaCalTypeController extends Controller
{
    // 查询指定课程的分数类型id
    public function getDesignatedMetaCalTypes(Request $request) {

        $course_id = $request->get('q');

        $metaCalTypes = DB::table('meta_cal_type')
            ->whereIn('id', function ($query) use ($course_id) {
                $query->select('cal_type_id');
                $query->from('meta_cal');
                $query->whereIn('formula_id', function ($query) use ($course_id) {
                    $query->select('id');
                    $query->from('formula_left');
                    $query->where('course_id', $course_id);
                });
            });
        $metaCalTypes_collection = $metaCalTypes->get(['id', DB::raw('name as text')]);

        return $metaCalTypes_collection;
    }

    // 根据level，查询对应的父级节点
    public function getPMetaCalType(Request $request)
    {
        $level = $request->get('q');

        if ($level == 2) {
            // 当前节点为父级节点，返回pid是无父级节点
            $result = (['data' => ['id' => 0, 'text' => '无父结点']]);
        }elseif ($level == 1){
            // 当前节点为元计算项，返回pid为
            $result = DB::table('meta_cal_type')
                ->where('level', 2)
                ->get(['id', DB::raw('name as text')]);
        }else{
            $result = null;
        }

        return $result;
    }

}
