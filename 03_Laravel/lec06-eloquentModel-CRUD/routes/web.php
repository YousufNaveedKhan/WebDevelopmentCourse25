
<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function() {return view('welcome');});
Route::get('/', [PostController::class, 'index']);
Route::get('/delete/{id}', [PostController::class, 'delete']);


Route::post('/add-post', [PostController::class, 'store']);

Route::get('/edit/{id}', [PostController::class, 'edit']);
Route::post('/edit-post/{id}', [PostController::class, 'editPost']);