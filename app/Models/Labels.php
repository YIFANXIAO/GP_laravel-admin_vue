<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Labels extends Model
{
    public $table = 'labels';

    public function articles(): BelongsToMany
    {
        $pivotTable = config('admin.database.articles_labels_table');

        $relatedModel = config('admin.database.articles_model');

        return $this->belongsToMany($relatedModel, $pivotTable, 'label_id', 'article_id');
    }

}
