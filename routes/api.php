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
Route::any('/getTestList', 'TestController@getTestList');
Route::any('/getArticleList', 'ArticleController@getArticleList');
Route::any('/getReplyUser/{article}/{admin_user}', 'CommentsController@getReplyUser');
Route::any('/getPComments/{article}', 'CommentsController@getPComments');
Route::any('/getSquads/{squad_id}', 'SquadController@getSquads');
Route::any('/getStudents', 'AdminUserController@getStudents');

