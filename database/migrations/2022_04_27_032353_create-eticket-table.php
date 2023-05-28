<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEticketTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('eticket', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ticket_no');
            $table->date('date');
            $table->time('time');
            $table->string('id_user');
            $table->string('problem');
            $table->string('problem_type')->nullable();
            $table->string('solution')->nullable();
            $table->string('rep_part')->nullable();
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
        Schema::drop('eticket');
    }
}
