<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend;
use App\Http\Controllers\Frontend;

Route::get('/', [Frontend\HomeController::class, 'index'])->name('/');

Auth::routes(['register' => false, 'reset' => false]);

Route::middleware('auth')->group(function () {
    Route::get('dashboard', [Backend\DashboardController::class, 'index'])->name('dashboard');

    Route::group(['middleware' => ['user-access:admin']], function () {
        Route::resource('visitors', Backend\VisitorController::class);
    });

    Route::resources([
        'profile' => Backend\ProfileController::class,
        'password-change' => Backend\PasswordController::class,
    ]);
});