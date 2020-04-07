<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentSquad extends Model
{
    public $table = 'student_squad';

    public function squad()
    {
        return $this->belongsTo(Squad::class, 'squad_id', 'id');
    }

    public function student()
    {
        return $this->belongsTo(AdminUser::class, 'student_id', 'id');
    }

}
