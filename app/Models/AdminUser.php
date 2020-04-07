<?php

namespace App\Models;


use App\Model\ArticleDetail;
use Encore\Admin\Auth\Database\Administrator;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class AdminUser extends Administrator
{
    public $table = 'admin_users';

    public $fillable = [
        'id','username','password','name','avatar','remember_token','created_at','updated_at',
    ];

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

}
