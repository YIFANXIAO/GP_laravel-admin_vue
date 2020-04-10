<?php

use Illuminate\Support\Facades\DB;

$pFormula = DB::table('formula_left')
    ->where('Pid', 0)
//        ->where('course_id', $course)
    ->get();

echo $pFormula->isEmpty();