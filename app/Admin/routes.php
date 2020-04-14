<?php

use App\Admin\Controllers\AdminMenuController;
use App\Admin\Controllers\AdminOperationlogController;
use App\Admin\Controllers\AdminPermissionController;
use App\Admin\Controllers\AdminRoleController;
use App\Admin\Controllers\AdminUserController;
use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resource('articles', ArticleController::class);
    $router->resource('comments', CommentController::class);
    $router->resource('labels', LabelController::class);
    $router->resource('professions', ProfessionController::class);
    $router->resource('squads', SquadController::class);
    $router->resource('student-squads', StudentSquadController::class);
    $router->resource('courses', CourseController::class);
    $router->resource('course-type-constants', CourseTypeConstantController::class);
    $router->resource('squad-courses', SquadCourseController::class);
    $router->resource('teacher-courses', TeacherCourseController::class);
    $router->resource('formula-lefts', FormulaLeftController::class);
    $router->resource('fractions', FractionController::class);
    $router->resource('meta-cals', MetaCalController::class);
    $router->resource('meta-cal-types', MetaCalTypeController::class);
    $router->resource('users', UserController::class);


});

// 继承封装控制器，重写用户、角色、权限、菜单等控制器，并覆盖路由（无domain，这个是后来加的，是为了独立域名；也没有namespace，会多套一层）
Route::group([
    'prefix'        => config('admin.route.prefix'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->resource('auth/users', AdminUserController::class);
    $router->resource('auth/roles', AdminRoleController::class);
    $router->resource('auth/permissions', AdminPermissionController::class);
    $router->resource('auth/menu', AdminMenuController::class);
    $router->resource('auth/logs', AdminOperationlogController::class);
});
