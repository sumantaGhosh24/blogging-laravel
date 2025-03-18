<?php

use App\Http\Controllers\CommentController;
use Illuminate\Support\Facades\Route;

Route::middleware('auth')->group(function () {
    Route::get('/my_comments', [CommentController::class, 'my_comments'])->name('my_comments');

    Route::post('/comment/{id}', [CommentController::class, 'store'])->name('comment.store');
});

Route::middleware('auth:admin')->prefix('admin')->name('admin.')->group(function () {
    Route::get('/comments', [CommentController::class, 'index'])->name('comments');
});