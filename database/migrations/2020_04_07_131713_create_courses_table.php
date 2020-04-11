<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('full_name', 50);
            $table->string('attribute', 50)->nullable();
            $table->integer('credit')->nullable();
            $table->integer('courses_type_id')->nullable();
            $table->string('location', 100)->nullable();
            $table->string('Schedule_text', 200)->nullable();
            $table->string('Schedule_image', 200)->nullable();

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
        Schema::dropIfExists('courses');
    }
}
