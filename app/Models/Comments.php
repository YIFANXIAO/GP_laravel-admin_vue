<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{

    public function article()
    {
        return $this->belongsTo(Article::class, 'article_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(AdminUser::class, 'user_id', 'id');
    }

    public function reply_user()
    {
        return $this->belongsTo(AdminUser::class, 'reply_user_id', 'id');
    }

}
