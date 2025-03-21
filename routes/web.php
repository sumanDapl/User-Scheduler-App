<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RandomUserController; // Import the controller

Route::get('/', function () {
    return view('welcome');
});

// New route for fetchRandomUsers
Route::get('random-users', [RandomUserController::class, 'fetchRandomUsers']);
// New route for addRandomUsers
Route::get('add-random-users', [RandomUserController::class, 'addRandomUsersToDatabase']);

// New route for getFilteredUsers
Route::get('filtered-users', [RandomUserController::class, 'getFilteredUsers']);
