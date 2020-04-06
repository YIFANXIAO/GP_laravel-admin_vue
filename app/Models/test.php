<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class test extends Model
{
    protected $table = 'test';
    protected $guarded = [];
    // 测试类
    public function  getInfo(){
        $tests = self::get();
        return $tests;
    }
}
