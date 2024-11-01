<?php

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[App\Http\Controllers\WebsiteController::class,'index']);
Route::get('category/{artikel}',[App\Http\Controllers\WebsiteController::class,'artikel']);
Route::get('category/detail/{id}',[App\Http\Controllers\WebsiteController::class,'artikel_detail']);
Route::get('writers',[App\Http\Controllers\WebsiteController::class,'writers']);
Route::get('writers/{id}/artikel',[App\Http\Controllers\WebsiteController::class,'showArticles']);
Route::get('about',[App\Http\Controllers\WebsiteController::class,'about']);
Route::get('popular',[App\Http\Controllers\WebsiteController::class,'popular']);







