<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('system_settings', function (Blueprint $table) {
            $table->id();
            $table->string('main_tag_line')->nullable();
            $table->string('location_pos')->nullable();
            $table->string('ntn_number')->nullable();
            $table->string('logo')->nullable(); // To store the logo file name
            $table->decimal('tax', 8, 2)->nullable();
            $table->string('pos')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('system_settings');
    }

};
