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


        if ($this->isStudent()) {
            // 学生版成绩信息，学生可以查看总分以及该课程含有的其他父级类型分数，如平时分、实验成绩等等
            // 根据元计算项信息，推导出其父级节点信息
            $pMetaCalIds = StaticMethodController::getPMetaCalTypeList($metaCals);
            // 根据元计算项信息，查询分数表，计算出各个元计算项的分数
            $metaCalFractions = StaticMethodController::getMetaCalFractionList($metaCals, $course_id, $this->getAdminIdByUserId()->id);

            // 计算所有父级分数项，并返回前端
            $results = collect();

            // 先计算课程对应公式的分数
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

        }elseif ($this->isTeacher()) {
            // 教师版分数详情，可以查看课程，对应的班级，对应的平均分、最高分、及格率

            $squads = DB::table('squad')
                ->select('squad.id', 'squad.profession_id', 'squad.name', 'squad.info')
                ->whereIn('id', function ($query) use ($course_id) {
                    $query->select('squad_id');
                    $query->from('squads_courses');
                    $query->where('course_id', $course_id);
                })
                ->get();

            $results = collect();

            // 遍历班级
            foreach ($squads as $key => $value) {
                // 查询每个人的成绩
                $studentIds = DB::table('student_squad')
                    ->where('squad_id', $value->id)
                    ->get();


                $squTotalSource = 0;
                $squIsComplete = true;
                $squHighestSource = 0;
                $passCount = 0;
                // 每个班级学生的总分列表
                $squadStudentsFractionList = collect();
                foreach ($studentIds as $keyStu => $valueStu) {
                    // 获取学生总分
                    $stuTotalSource = StaticMethodController::getTotalSourceByUser($metaCals, $course_id, $valueStu->student_id);

                    // 计算总分和是否完成
                    $squTotalSource += $stuTotalSource->get('totalScore');
                    $squIsComplete = $squIsComplete && $stuTotalSource->get('totalIsComplete');

                    // 计算最高分
                    if ($squHighestSource < $stuTotalSource->get('totalScore')) {
                        $squHighestSource = $stuTotalSource->get('totalScore');
                    }

                    if ($stuTotalSource->get('totalScore') > 5) {
                        $passCount++;
                    }

                    $stuName = DB::table('admin_users')
                        ->where('id', $valueStu->student_id)
                        ->get()
                        ->first();

                    // 记录单个学生分数行数据
                    $studentFraction = collect();
                    $studentFraction->put('stu_name', $stuName->name);
                    $studentFraction->put('stu_ID', $stuName->username);
                    if ($stuTotalSource->get('totalIsComplete')) {
                        $studentFraction->put('is_complete', '最终分数');
                    }else {
                        $studentFraction->put('is_complete', '非最终分数');
                    }

                    $studentFraction->put('cur_fraction', $stuTotalSource->get('totalScore'));

                    $squadStudentsFractionList->push($studentFraction);
                }

                // 单个班级的成绩情况
                $squadResult = collect();

                // 放入平均分
                $squadSingleResult = collect();
                $squadSingleResult->put('name', '平均分');
                $squadSingleResult->put('source', round($squTotalSource/$studentIds->count(), 3));
                if ($squIsComplete) {
                    $squadSingleResult->put('is_complete', '最终分数');
                }else {
                    $squadSingleResult->put('is_complete', '非最终分数');
                }
                $squadResult->push($squadSingleResult);

                // 最高分
                $squadSingleResult = collect();
                $squadSingleResult->put('name', '最高分');
                $squadSingleResult->put('source', $squHighestSource);
                if ($squIsComplete) {
                    $squadSingleResult->put('is_complete', '最终分数');
                }else {
                    $squadSingleResult->put('is_complete', '非最终分数');
                }
                $squadResult->push($squadSingleResult);

                // 及格率
                $squadSingleResult = collect();
                $squadSingleResult->put('name', '及格率');
                $squadSingleResult->put('source', round($passCount/$studentIds->count(), 3));
                if ($squIsComplete) {
                    $squadSingleResult->put('is_complete', '最终分数');
                }else {
                    $squadSingleResult->put('is_complete', '非最终分数');
                }
                $squadResult->push($squadSingleResult);


                $squadInfo = collect();

                $squadInfo->put('name', $value->name);
                $squadInfo->put('data', $squadResult);
                $squadInfo->put('fractionLists', $squadStudentsFractionList);


                // 添加每个班级的情况，到最后结果中
                $results->push( $squadInfo);
            }

        }else {
            $results = null;
        }
        return $results;
    }
}
