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
        Schema::table('orders', function (Blueprint $table) {
            $table->string('fbr_invoice_no')->nullable()->after('due'); // Add FBR Invoice No
            $table->string('transaction_no')->nullable()->after('fbr_invoice_no'); // Add Transaction No
        });
    }

    public function down()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn(['fbr_invoice_no', 'transaction_no']);
        });
    }

};
