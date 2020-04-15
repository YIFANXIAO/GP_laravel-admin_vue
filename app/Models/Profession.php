<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Profession extends Model
{
    public $table = 'professions';

    public $primaryKey = 'id';

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model) {

            // 删除专业对应的班级，对应的学生，对应的前台用户
            DB::table('users')
                ->whereIn('email', function ($query) use ($model) {
                    $query->select('username');
                    $query->from('admin_users');
                    $query->whereIn('id', function ($query) use ($model) {
                        $query->select('student_id');
                        $query->from('student_squad');
                        $query->whereIn('squad_id', function ($query) use ($model) {
                            $query->select('id');
                            $query->from('squad');
                            $query->whereIn('profession_id', $model->id);
                        });
                    });
                })
                ->delete();

            // 删除专业对应的班级，对应的学生，对应的所有成绩
            DB::table('fraction')
                ->whereIn('student_id', function ($query) use ($model) {
                    $query->select('student_id');
                    $query->from('student_squad');
                    $query->whereIn('squad_id', function ($query) use ($model) {
                        $query->select('id');
                        $query->from('squad');
                        $query->whereIn('profession_id', $model->id);
                    });
                })
                ->delete();

            // 删除专业对应的班级，对应的学生
            DB::table('admin_users')
                ->whereIn('id', function ($query) use ($model) {
                    $query->select('student_id');
                    $query->from('student_squad');
                    $query->whereIn('squad_id', function ($query) use ($model) {
                        $query->select('id');
                        $query->from('squad');
                        $query->whereIn('profession_id', $model->id);
                    });
                })
                ->delete();

            // 删除专业对应的班级、学生的绑定关系
            DB::table('student_squad')
                ->whereIn('squad_id', function ($query) use ($model) {
                    $query->select('id');
                    $query->from('squad');
                    $query->where('profession_id', $model->id);
                })
                ->delete();

            // 删除专业对应的班级
            Squad::where('profession_id', $model->id)->delete();

        });
    }

    public function squads()
    {
        return $this->hasMany(Squad::class, 'profession_id', 'id');
    }

}
