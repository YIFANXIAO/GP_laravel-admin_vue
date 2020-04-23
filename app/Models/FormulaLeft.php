<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\DB;

class FormulaLeft extends Model
{
    public $table = 'formula_left';

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model) {

            // 根据pid是否为0，决定是否执行以下删除逻辑
            if ($model->pid == 0) {

                // 删除公式左部对应的课程，对应的分数
                DB::table('fraction')
                    ->where('course_id', $model->course_id)
                    ->delete();

                // 删除公式左部对应的元计算项
                DB::table('meta_cal')
                    ->where('formula_id', $model->id)
                    ->delete();

                // 删除当前公式的所有子公式
                DB::table('formula_left')
                    ->where('pid', $model->id)
                    ->delete();
            }

        });
    }

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

    public function formulaLeft()
    {
        return $this->belongsTo(FormulaLeft::class, 'pid', 'id');
    }

}
