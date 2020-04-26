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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/test', function () {
    return view('test');
});

Auth::routes();

Route::get('/home', 'front\HomeController@index')->name('home');
Route::get('/articles', 'front\ArticleController@getArticlesView');
Route::get('/squads', 'front\SquadController@getSquadsView');
Route::get('/personal_access_tokens', 'front\PersonalAccessTokensController@index');
Route::get('/squad_detail/{id}', 'front\SquadController@getSquadDetailView');
Route::get('/courses', 'front\CourseController@getCoursesView');
Route::get('/fraction_detail/{id}', 'front\FractionController@getFractionDetailView');
Route::get('/article_detail/{article_id}', 'front\ArticleController@getArticleDetailView');

