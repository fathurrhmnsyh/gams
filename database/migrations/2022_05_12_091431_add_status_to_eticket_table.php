<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusToEticketTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('eticket', function (Blueprint $table) {
            $table->string('status', 20)->after('rep_part');
            $table->string('id_kode_fa', 1)->after('status');
            $table->string('id_asset', 1)->after('id_kode_fa');
            $table->string('technician', 20)->after('id_asset');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('eticket', function (Blueprint $table) {
            //
        });
    }
}
