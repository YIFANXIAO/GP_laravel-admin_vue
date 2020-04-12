<?php

namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{

    use ModelTree, AdminBuilder;

    protected $table = 'comments';

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        $this->setParentColumn('pid');
        $this->setOrderColumn('id');
        $this->setTitleColumn('content');
    }


    public function article()
    {
        return $this->belongsTo(Article::class, 'article_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(AdminUser::class, 'user_id', 'id');
    }

    public function reply_comment()
    {
        return $this->belongsTo(Comments::class, 'reply_comment_id', 'id');
    }

}
