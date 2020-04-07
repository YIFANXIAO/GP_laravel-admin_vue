<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TeacherCourse extends Model
{
    public $table = 'teachers_courses';

    public function course()
    {
        return $this->belongsTo(Course::class, 'course_id', 'id');
    }

    public function teacher()
    {
        return $this->belongsTo(AdminUser::class, 'teacher_id', 'id');
    }

}
