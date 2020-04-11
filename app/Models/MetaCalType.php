<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class MetaCalType extends Model
{
    public $table = 'meta_cal_type';

    public function formulaLefts(): BelongsToMany
    {
        $pivotTable = config('admin.database.meta_cal_table');

        $relatedModel = config('admin.database.formula_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'cal_type_id', 'formula_id');
    }

    public function metaCals()
    {
        return $this->hasMany(MetaCal::class, 'cal_type_id', 'id');
    }

    public function fractions()
    {
        return $this->hasMany(Fraction::class, 'courses_type_id', 'id');
    }

}
