<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// laravel-admin后台使用的select框的调用函数路由
Route::any('/getArticleList', 'ArticleController@getArticleList');
Route::any('/getReplyUser/{article}/{admin_user}', 'CommentsController@getReplyUser');
Route::any('/getPComments/{article}', 'CommentsController@getPComments');
Route::any('/getCurrentSquads/{squad_id}', 'SquadController@getCurrentSquads');
Route::any('/getSquads', 'SquadController@getSquads');
Route::any('/getStudents', 'AdminUserController@getStudents');
Route::any('/getTeachers/{course_id}', 'AdminUserController@getTeachers');
Route::any('/getTeachers', 'AdminUserController@getAllTeachers');
Route::any('/getCourseTypes', 'CourseTypeController@getCourseTypes');
Route::any('/getCurrentCourse/{course_id}', 'CourseController@getCurrentCourse');
