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

    public function getFractionListByUser(Request $request) {

        $fractionListRequestData = $request->get('fractionListRequestData');

        // 根据传参，返回指定用户、指定课程的，所有正常次序范围内的分数
        $course_id = array_get($fractionListRequestData, 'course_id');
        $perPage = array_get($fractionListRequestData, 'row');
        $currentPage = array_get($fractionListRequestData, 'page');

        $cal_type_name = array_get($fractionListRequestData, 'cal_type_name');
        $order = array_get($fractionListRequestData, 'order');

//        dump($cal_type_name);
//        dump($order);

        $metaCals = DB::table('meta_cal')
            ->select('meta_cal.cal_type_id', 'meta_cal.number')
            ->where('formula_id', function ($query) use ($course_id) {
                $query->select('id');
                $query->from('formula_left');
                $query->where('course_id', $course_id);
            })
            ->get();

        $allFractionList = collect();
        foreach ($metaCals as $key => $value) {
            $fractionList = DB::table('fraction')
                ->leftJoin('admin_users', 'admin_users.id', '=', 'fraction.student_id')
                ->leftJoin('courses', 'courses.id', '=', 'fraction.course_id')
                ->leftJoin('meta_cal_type', 'meta_cal_type.id', '=', 'fraction.cal_type_id')
                ->select('admin_users.name as user_name', 'courses.full_name', 'meta_cal_type.name', 'fraction.order', 'fraction.fraction')
                ->where('student_id', $this->getAdminIdByUserId()->id)
                ->where('course_id', $course_id)
                ->where('cal_type_id', $value->cal_type_id)
                ->where('order', '<=', $value->number)
                ->when(($cal_type_name != null && $cal_type_name != ''), function ($query) use ($cal_type_name) {
                    return $query->where('meta_cal_type.name', 'like', "%{$cal_type_name}%");
                })
                ->when(($order != null), function ($query) use ($order) {
                    return $query->where('fraction.order', 'like', "%{$order}%");
                })
                ->get();

            $allFractionList = $fractionList->merge($allFractionList);
        }

        // 由于这里是通过合并数组，得出的最后数据，laravel内置的分页无法使用，手动进行配置分页
        if ($perPage*$currentPage > $allFractionList->count()) {
            $resultDataPer = $allFractionList->take(-($allFractionList->count() - $perPage * ($currentPage - 1)));
        }else {
            $resultDataPer = $allFractionList->take($perPage * $currentPage)->take( -$perPage );
        }

        // 转换collection的key值，否则分页不起作用
        $resultData = collect();
        foreach ($resultDataPer as $key => $value) {
            $resultData->push($value);
        }

        $result = collect();
        $result->put('data', $resultData);
        $result->put('current_page', $currentPage);
        $result->put('total', $allFractionList->count());

        return $result;
    }

    public function getFormulaLeftDatas(Request $request) {

        $fractionRequestData = $request->get('fractionRequestData');

        $course_id = array_get($fractionRequestData, 'course_id');

        if ($this->isStudent()) {
            // 根据课程id查询公式左部信息
            $formulaLeft = DB::table('formula_left')
                ->select('formula_left.id', 'formula_left.name', 'formula_left.course_id')
                ->where('course_id', $course_id)
                ->get()
                ->first();

            // 根据公式左部查询公式元计算项信息
            $metaCals = DB::table('meta_cal')
                ->select('meta_cal.cal_type_id', 'meta_cal.number', 'meta_cal.proportion')
                ->where('formula_id', $formulaLeft->id)
                ->get();


            $pMetaCalIds = collect();
            $metaCalFractions = collect();
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

                // 根据元计算项信息，计算出所有元计算项对应的分数等信息
                $fractions = DB::table('fraction')
                    ->select('fraction.order', 'fraction.fraction')
                    ->where('student_id', $this->getAdminIdByUserId()->id)
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

            // 计算父级分数项，并返回前端
            $results = collect();

            // 先计算总分
            $resultFraction = collect();
            $totalScore = 0;
            $totalIsComplete = true;
            foreach ($metaCalFractions as $key => $value) {
                $totalScore += $value->get('fraction');
                $totalIsComplete = $totalIsComplete && $value->get('isComplete');
            }
            $resultFraction->put('name', $formulaLeft->name);
            $resultFraction->put('fraction', $totalScore);
            $resultFraction->put('isComplete', $totalIsComplete);
            $results->push($resultFraction);

            // 计算父级分数
            foreach ($pMetaCalIds as $key => $value) {
                $metaCal = DB::table('meta_cal_type')
                    ->where('id', $value)
                    ->get()
                    ->first();
                $childCalTypes = DB::table('meta_cal_type')
                    ->select('meta_cal_type.id', 'meta_cal_type.name')
                    ->where('pid', $value)
                    ->get();
                $resultFraction = collect();
                $source = 0;
                $isComplete = true;
                foreach ($metaCalFractions as $keyMeta => $valueMeta) {
                    foreach ($childCalTypes as $keyChildMeta => $valueChildMeta) {
                        if ($valueMeta->get('meta_cal_type_id') == $valueChildMeta->id) {
                            $source += $valueMeta->get('fraction');
                            $isComplete = $isComplete && $valueMeta->get('isComplete');
                        }
                    }
                }

                $resultFraction->put('name', $metaCal->name);
                $resultFraction->put('fraction', $source);
                $resultFraction->put('isComplete', $isComplete);
                $results->push($resultFraction);

            }

            return $results;

        }elseif ($this->isTeacher()) {

        }else {

        }

    }
}
