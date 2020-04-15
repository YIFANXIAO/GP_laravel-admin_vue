<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\DB;

class Labels extends Model
{
    public $table = 'labels';

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model) {

            // 删除文章、标签绑定关系
            DB::table('articles_labels')
                ->where('label_id', $model->id)
                ->delete();


        });
    }

    public function articles(): BelongsToMany
    {
        $pivotTable = config('admin.database.articles_labels_table');

        $relatedModel = config('admin.database.articles_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'label_id', 'article_id');
    }

}
