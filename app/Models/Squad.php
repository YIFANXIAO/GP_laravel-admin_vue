<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\DB;

class Squad extends Model
{
    public $table = 'squad';

    public $primaryKey = 'id';

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model) {

            // 删除班级对应的学生，对应的前台用户
            DB::table('users')
                ->whereIn('email', function ($query) use ($model) {
                    $query->select('username');
                    $query->from('admin_users');
                    $query->whereIn('id', function ($query) use ($model) {
                        $query->select('student_id');
                        $query->from('student_squad');
                        $query->where('squad_id', $model->id);
                    });
                })
                ->delete();

            // 删除班级对应的学生，对应的所有分数
            DB::table('fraction')
                ->whereIn('student_id', function ($query) use ($model) {
                    $query->select('student_id');
                    $query->from('student_squad');
                    $query->whereIn('squad_id', $model->id);
                })
                ->delete();

            // 删除班级对应的学生
            DB::table('admin_users')
                ->whereIn('id', function ($query) use ($model) {
                    $query->select('student_id');
                    $query->from('student_squad');
                    $query->whereIn('squad_id', $model->id);
                })
                ->delete();

            // 删除班级、学生绑定关系
            StudentSquad::where('squad_id', $model->id)->delete();

        });
    }

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
