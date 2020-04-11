<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MetaCal extends Model
{
    public $table = 'meta_cal';

    public function formulaLeft()
    {
        return $this->belongsTo(FormulaLeft::class, 'formula_id', 'id');
    }

    public function metaCalType()
    {
        return $this->belongsTo(MetaCalType::class, 'cal_type_id', 'id');
    }

}
