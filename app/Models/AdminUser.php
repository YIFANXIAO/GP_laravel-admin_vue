<?php

namespace App\Models;


use App\Model\ArticleDetail;
use App\User;
use Encore\Admin\Auth\Database\Administrator;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\DB;

class AdminUser extends Administrator
{
    public $table = 'admin_users';

    public $fillable = [
        'id','username','password','name','avatar','remember_token','created_at','updated_at',
    ];

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model) {

            // 删除教师、课程绑定关系
            DB::table('teachers_courses')
                ->where('teacher_id', $model->id)
                ->delete();

            // 删除学生对应的分数
            DB::table('fraction')
                ->where('student_id',  $model->id)
                ->delete();

            // 删除学生、班级绑定关系
            DB::table('student_squad')
                ->where('student_id', $model->id)
                ->delete();

            // 删除对应前台用户
            User::where('email', $model->username)->delete();

            // 删除该用户发布的文章
            $articles = DB::table('article')
                ->where('user_id', $model->id)
                ->get();

            // 删除该文章对应的所有评论
            if ($articles->count() > 0) {
                foreach ($articles as $key => $value) {
                    DB::table('comments')
                        ->where('article_id', $value->id)
                        ->delete();

                    DB::table('article')
                        ->where('id', $value->id)
                        ->delete();
                }
            }

            // 删除该用户发布的评论，
            $comments = DB::table('comments')
                ->where('user_id', $model->id)
                ->get();

            if ($comments->count() > 0) {
                foreach ($comments as $key => $value) {
                    // 如果是父级评论，连带着子级评论一起删除
                    if ($value->level == 1) {
                        // 删除子节点
                        DB::table('comments')
                            ->where('pid', $value->id)
                            ->delete();
                    }
                    // 删除自身
                    DB::table('comments')
                        ->where('id', $value->id)
                        ->delete();
                }
            }


        });
    }

    public function articles()
    {
        return $this->hasMany(Article::class, 'user_id','id');
    }

    public function comments()
    {
        return $this->hasMany(Comments::class, 'id','id');
    }

    public function squads(): BelongsToMany
    {
        $pivotTable = config('admin.database.student_squad_table');

        $relatedModel = config('admin.database.squad_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'student_id', 'squad_id');
    }

    public function studentSquads()
    {
        return $this->hasMany(StudentSquad::class, 'student_id', 'id');
    }

    public function courses(): BelongsToMany
    {
        $pivotTable = config('admin.database.teachers_courses_table');

        $relatedModel = config('admin.database.course_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'teacher_id', 'course_id');
    }

    public function teacherCourse()
    {
        return $this->hasMany(TeacherCourse::class, 'teacher_id', 'id');
    }

    public function fractions()
    {
        return $this->hasMany(Fraction::class, 'student_id', 'id');
    }

}
