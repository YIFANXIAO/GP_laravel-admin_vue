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

// 前台查询路由

Route::group(['middleware' => 'auth:api'], function(){
    Route::post('/front/getSquadByUser', 'front\SquadController@getSquadByUser');
    Route::post('/front/getArticleList', 'front\ArticleController@getArticleList');
    Route::post('/front/getSquadInfo', 'front\SquadController@getSquadInfo');
    Route::post('/front/getProfessionInfo', 'front\SquadController@getProfessionInfo');
    Route::post('/front/getSquadStudents', 'front\SquadController@getSquadStudents');
    Route::post('/front/getCoursesInfoByUser', 'front\CourseController@getCoursesInfoByUser');
    Route::post('/front/getFormulaLeftDatas', 'front\FractionController@getFormulaLeftDatas');
});

// laravel-admin后台使用的select框的调用函数路由
Route::any('/getReplyUser/{article}/{admin_user}', 'CommentsController@getReplyUser');
Route::any('/getPComments/{article}', 'CommentsController@getPComments');
Route::any('/getCurrentSquads/{squad_id}', 'SquadController@getCurrentSquads');
Route::any('/getSquads', 'SquadController@getSquads');
Route::any('/getAllocatedStudents', 'AdminUserController@getAllocatedStudents');
Route::any('/getDesignatedStudents', 'AdminUserController@getDesignatedStudents');
Route::any('/getTeachers/{course_id}', 'AdminUserController@getTeachers');
Route::any('/getTeachers', 'AdminUserController@getAllTeachers');
Route::any('/getCourseTypes', 'CourseTypeController@getCourseTypes');
Route::any('/getCurrentCourse/{course_id}', 'CourseController@getCurrentCourse');
Route::any('/getCourses', 'CourseController@getCourses');
Route::any('/getCreatPFormula', 'FormulaLeftController@getCreatPFormula');
Route::any('/getEditPFormula', 'FormulaLeftController@getEditPFormula');
Route::any('/getDesignatedMetaCalTypes', 'MetaCalTypeController@getDesignatedMetaCalTypes');
Route::any('/getMetaCalType', 'FormulaLeftController@getMetaCalType');
