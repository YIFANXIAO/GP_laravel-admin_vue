<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MetaCalTypeController extends Controller
{
    public function getMetaCalTypes() {

        $metaCalTypes = DB::table('meta_cal_type');
        $metaCalTypes_collection = $metaCalTypes->get(['id', DB::raw('name as text')]);

        return $metaCalTypes_collection;
    }
}
