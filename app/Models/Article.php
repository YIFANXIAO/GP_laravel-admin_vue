<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Article extends Model
{
    public $table = 'article';

    public $primaryKey = 'id';

    public function adminUser()
    {
        return $this->belongsTo(AdminUser::class, 'user_id','id');
    }

    public function comments()
    {
        return $this->hasMany(Comments::class, 'article_id', 'id');
    }

    public function labels(): BelongsToMany
    {
        $pivotTable = config('admin.database.articles_labels_table');

        $relatedModel = config('admin.database.labels_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'article_id', 'label_id');
    }

    // 测试类
    public function  getInfo(){
        $tests = self::get();
        return $tests;
    }

}
