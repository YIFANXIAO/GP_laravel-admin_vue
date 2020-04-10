<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Course extends Model
{
    public $table = 'courses';

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

}
