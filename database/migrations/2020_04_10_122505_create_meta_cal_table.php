<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMetaCalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meta_cal', function (Blueprint $table) {
            $table->integer('formula_id');
            $table->integer('cal_type_id');
            $table->index(['formula_id', 'cal_type_id']);
            $table->integer('number')->default(1);
            $table->double('proportion')->default(0.0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meta_cal');
    }
}
