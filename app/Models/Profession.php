<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profession extends Model
{
    public $table = 'professions';

    public $primaryKey = 'id';

    public function squads()
    {
        return $this->hasMany(Squad::class, 'profession_id', 'id');
    }

}
