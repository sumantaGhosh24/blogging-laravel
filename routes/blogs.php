<?php

use App\Http\Controllers\BlogController;
use Illuminate\Support\Facades\Route;

Route::get('/', [BlogController::class, 'welcome'])->name('welcome');

Route::middleware('auth')->group(function () {
    Route::get('/all_blogs', [BlogController::class, 'all_blogs'])->name('all_blogs');

    Route::get('/blog/{id}', [BlogController::class, 'blog_details'])->name('blog.details');
});

Route::middleware('auth:admin')->prefix('admin')->name('admin.')->group(function () {
    Route::get('/blogs', [BlogController::class, 'index'])->name('blogs');

    Route::get('/blog', [BlogController::class, 'create'])->name('blog.create');

    Route::post('/blog', [BlogController::class, 'store'])->name('blog.store');

    Route::get('/blog/{id}', [BlogController::class, 'edit'])->name('blog.edit');

    Route::put('/blog/{id}', [BlogController::class, 'update'])->name('blog.update');

    Route::put('/blog/image/{id}', [BlogController::class, 'image'])->name('blog.image');

    Route::delete('/blog/{id}', [BlogController::class, 'destroy'])->name('blog.destroy');
});