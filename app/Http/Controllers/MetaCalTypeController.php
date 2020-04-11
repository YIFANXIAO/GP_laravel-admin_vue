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
}
