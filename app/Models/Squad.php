<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Squad extends Model
{
    public $table = 'squad';

    public $primaryKey = 'id';

    public function profession()
    {
        return $this->belongsTo(Profession::class, 'profession_id', 'id');
    }

    public function students(): BelongsToMany
    {
        $pivotTable = config('admin.database.student_squad_table');

        $relatedModel = config('admin.database.user_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'squad_id', 'student_id');
    }

    public function studentSquads()
    {
        return $this->hasMany(StudentSquad::class, 'squad_id', 'id');
    }

    public function course(): BelongsToMany
    {
        $pivotTable = config('admin.database.squads_courses_table');

        $relatedModel = config('admin.database.course_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'squad_id', 'course_id');
    }

}
