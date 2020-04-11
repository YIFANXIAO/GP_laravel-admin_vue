<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Fraction extends Model
{
    public $table = 'fraction';

    public $fillable = [
        'id','student_id','course_id','cal_type_id','order','fraction','created_at','updated_at',
    ];

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
