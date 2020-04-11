<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Fraction extends Model
{
    public $table = 'fraction';

    public function student()
    {
        return $this->belongsTo(AdminUser::class, 'student_id', 'id');
    }

    public function course()
    {
        return $this->belongsTo(Course::class, 'course_id', 'id');
    }

    public function metaCalType()
    {
        return $this->belongsTo(MetaCalType::class, 'cal_type_id', 'id');
    }

}
