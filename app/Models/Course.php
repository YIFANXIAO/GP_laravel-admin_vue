<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\DB;

class Course extends Model
{
    public $table = 'courses';

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model) {

            // 删除课程含有的公式左部，对应的所有元计算项
            DB::table('meta_cal')
                ->whereIn('formula_id', function ($query) use ($model) {
                    $query->select('id');
                    $query->from('formula_left');
                    $query->where('course_id', $model->id);
                })
                ->delete();

            // 删除课程含有的公式左部
            DB::table('formula_left')
                ->where('course_id', $model->id)
                ->delete();

            // 删除课程、教师绑定表
            DB::table('teachers_courses')
                ->where('course_id', $model->id)
                ->delete();

            // 删除课程对应的所有成绩
            DB::table('fraction')
                ->where('course_id', $model->id)
                ->delete();

            // 删除课程、班级绑定关系
            DB::table('squads_courses')
                ->where('course_id', $model->id)
                ->delete();

        });
    }

    public function course_type()
    {
        return $this->belongsTo(CourseTypeConstant::class, 'courses_type_id', 'id');
    }

    public function squads(): BelongsToMany
    {
        $pivotTable = config('admin.database.squads_courses_table');

        $relatedModel = config('admin.database.squad_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'course_id', 'squad_id');
    }

    public function teachers(): BelongsToMany
    {
        $pivotTable = config('admin.database.teachers_courses_table');

        $relatedModel = config('admin.database.user_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'course_id', 'teacher_id');
    }

    public function teacherCourse()
    {
        return $this->hasMany(TeacherCourse::class, 'course_id', 'id');
    }

    public function formulaLeft()
    {
        return $this->hasMany(FormulaLeft::class, 'course_id', 'id');
    }

    public function fractions()
    {
        return $this->hasMany(Fraction::class, 'course_id', 'id');
    }

}
