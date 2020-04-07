<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CourseTypeConstant extends Model
{
    public $table = 'courses_types_constant';

    public function course()
    {
        return $this->hasMany(Course::class, 'courses_type_id', 'id');
    }

}
