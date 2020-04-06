<?php

namespace App\Models;


use App\Model\ArticleDetail;
use Encore\Admin\Auth\Database\Administrator;

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

}
