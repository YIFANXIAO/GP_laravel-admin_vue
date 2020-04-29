<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FormulaLeftController extends Controller
{

    //根据父节点的id，返回公式元计算项
    public function getMetaCalType() {

        $resultMetaCalType = DB::table('meta_cal_type')
            ->get(['id', DB::raw('name as text')]);

        return $resultMetaCalType;
    }

}
