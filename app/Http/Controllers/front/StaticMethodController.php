<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Collection;

class StaticMethodController extends BaseController
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    // 根据元计算项信息，查询分数表，计算出各个元计算项的分数
    public static function getMetaCalFractionList($metaCals, $course_id, $student_id) {

        $metaCalFractions = collect();
        foreach ($metaCals as $key => $value) {

            // 根据元计算项信息，计算出所有元计算项对应的分数等信息
            $fractions = DB::table('fraction')
                ->select('fraction.order', 'fraction.fraction')
                ->where('student_id', $student_id)
                ->where('course_id', $course_id)
                ->where('cal_type_id', $value->cal_type_id)
                ->orderBy('order', 'Asc')
                ->get();

            $metaCalFraction = collect();
            $sumFractions = 0;
            $sumCount = 0;
            // 对查询出来的分数进行判空
            if ($fractions != null && $fractions->count() > 0) {
                foreach ($fractions as $keyFrac => $valueFrac) {
                    // 计算该项分数总和，准备进行计算平时分
                    // 计算次数，保障分数统计次数不超过规定
                    if ($valueFrac->order <= $value->number) {
                        $sumFractions += $valueFrac->fraction;
                        $sumCount = $valueFrac->order;
                    }
                }
                // 该项分数的最后分数
                $metaCalFraction->put('fraction', ($sumFractions/$sumCount)*$value->proportion);
                // 记录该项分数统计是否达到预定次数
                $metaCalFraction->put('isComplete', $sumCount == $value->number);
            }else {
                // 该项分数的最后分数
                $metaCalFraction->put('fraction', 0);
                // 记录该项分数统计是否达到预定次数
                $metaCalFraction->put('isComplete', false);
            }
            $metaCalFraction->put('meta_cal_type_id', $value->cal_type_id);
            // 存入元计算项分数集合中
            $metaCalFractions->push($metaCalFraction);
        }

        return $metaCalFractions;
    }

    // 根据元计算项信息，推导出其父级节点信息
    public static function getPMetaCalTypeList($metaCals) {
        $pMetaCalIds = collect();
        foreach ($metaCals as $key => $value) {
            // 根据元计算项信息，推导出其父级节点信息
            $pMetaCal = DB::table('meta_cal_type')
                ->select('meta_cal_type.id')
                ->whereIn('id', function ($query) use ($value) {
                    $query->select('pid');
                    $query->from('meta_cal_type');
                    $query->where('id', $value->cal_type_id);
                })
                ->get()
                ->first();
            if ($key == 0) {
                $pMetaCalIds->push($pMetaCal->id);
            }else{
                if (!$pMetaCalIds->contains($pMetaCal->id)) {
                    $pMetaCalIds->push($pMetaCal->id);
                }
            }
        }
        return $pMetaCalIds;
    }

    // 根据学生id等参数，计算课程，对应的公式，对应的每个学生的分数
    public static function getTotalSourceByUser($metaCals, $course_id, $student_id)
    {
        // 根据元计算项信息，查询分数表，计算出各个元计算项的分数
        $metaCalFractionsSingleStudent = StaticMethodController::getMetaCalFractionList($metaCals, $course_id, $student_id);
        // 计算学生，单项课程，总分
        $totalScore = 0;
        $totalIsComplete = true;
        foreach ($metaCalFractionsSingleStudent as $key => $value) {
            $totalScore += $value->get('fraction');
            $totalIsComplete = $totalIsComplete && $value->get('isComplete');
        }

        $result = collect();
        $result->put('totalScore', $totalScore);
        $result->put('totalIsComplete', $totalIsComplete);

        return $result;
    }
}
