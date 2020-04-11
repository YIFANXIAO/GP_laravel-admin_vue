<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FormulaLeftController extends Controller
{
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

    public function getEditPFormula(Request $request) {

        $course = $request->get('q');

        $pFormula = DB::table('formula_left')
            ->where('Pid', 0)
            ->where('course_id', $course)
            ->get(['id', DB::raw('name as text')]);

        $pFormula_collection = (['0' => ['id' => 0, 'text' => '无父结点']]);

        $result = array_merge($pFormula_collection, $pFormula->toArray());

        return $result;
    }
}
