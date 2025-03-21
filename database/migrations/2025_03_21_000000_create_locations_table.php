<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('locations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->onDelete('cascade'); // Foreign key to users table
            $table->string('street_number')->nullable(); // Street number
            $table->string('street_name')->nullable(); // Street name
            $table->string('city')->nullable(); // City
            $table->string('state')->nullable(); // State
            $table->string('country')->nullable(); // Country
            $table->string('postal_code')->nullable(); // Postal code
            $table->string('latitude')->nullable(); // Latitude
            $table->string('longitude')->nullable(); // Longitude
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('locations');
    }
};