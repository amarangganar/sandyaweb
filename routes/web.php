<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');

Route::group(['prefix' => 'about'], function() {
    Route::get('/', function () { return view('about'); })->name('about');
    Route::get('/board-members', function () { return view('board-members'); })->name('board');
});

Route::group(['prefix' => 'programs'], function() {
    Route::get('/research', function () { return view('programs.research'); })->name('programs.research');
    Route::get('/books', function () { return view('programs.books'); })->name('programs.books');
    Route::get('/school-of-peace-and-human-rights', function () { return view('programs.school'); })->name('programs.school');
    Route::get('/the-advocacy-for-marginalized-communities-and-refugees', function () { return view('programs.advocacy'); })->name('programs.advocacy');
    Route::get('/international-conference-for-the-protection-of-minority-rights', function () { return view('programs.conference'); })->name('programs.conference');
    Route::get('/pancasila-youth-ambassador', function () { return view('programs.pancasila'); })->name('programs.pancasila');
});
Route::get('/sunrise', function () { return view('programs.sunrise'); })->name('programs.sunrise');

Route::group(['prefix' => 'gallery'], function() {
    Route::get('/', function () { return view('gallery.index'); })->name('gallery');
    Route::get('/previous-sandya-events', function () { return view('gallery.previous'); })->name('gallery.previous');
    Route::get('/know-your-rights', function () { return view('gallery.kyr'); })->name('gallery.kyr');
    Route::get('/capacity-programme-with-unhcr', function () { return view('gallery.unhcr'); })->name('gallery.unhcr');
    Route::get('/model-un', function () { return view('gallery.mun'); })->name('gallery.mun');
});


Route::group(['prefix' => 'news'], function() {
    Route::get('/', 'BlogController@index')->name('news');
    Route::get('/{slug}', 'BlogController@post')->name('news.post');
    Route::get('/tag/{tag}', 'BlogController@postsByTag')->name('news.tag');
});

Route::get('/contact', function() { return view('contact'); })->name('contact');

