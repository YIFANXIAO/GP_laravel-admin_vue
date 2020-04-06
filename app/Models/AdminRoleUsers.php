<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdminRoleUsers extends Model
{
    public $table = 'admin_role_users';

    public $fillable = [
        'role_id','user_id','created_at','updated_at',
    ];
}
