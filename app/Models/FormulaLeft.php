<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class FormulaLeft extends Model
{
    public $table = 'formula_left';

    public function course()
    {
        return $this->belongsTo(Course::class, 'course_id', 'id');
    }

    public function metaCalTypes(): BelongsToMany
    {
        $pivotTable = config('admin.database.meta_cal_table');

        $relatedModel = config('admin.database.metaCalType_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'formula_id', 'cal_type_id');
    }

    public function metaCals()
    {
        return $this->hasMany(MetaCal::class, 'formula_id', 'id');
    }

}
