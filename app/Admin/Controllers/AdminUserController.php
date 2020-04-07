<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\AdminUser\ImportUsers;
use Encore\Admin\Controllers\UserController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Grid\Displayers\Actions;
use Encore\Admin\Show;

class AdminUserController extends UserController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Encore\Admin\Auth\Database\Administrator';

    protected function title()
    {
        return trans('用户管理');
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        $userModel = config('admin.database.users_model');
        $grid = new Grid(new $userModel());
        $grid->column('id', 'ID')->sortable()->hide();
        $grid->column('username', trans('用户登录标识'))->help('用户登录名，最好是英文或数字');
        $grid->column('name', trans('用户名称'))->help('用于展示的用户名称，随意')->copyable();

//        $grid->column('squads', __('所属班级'))->pluck('name')->label();

        $grid->column('roles', trans('admin.roles'))->pluck('name')->label();
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'))->hide();
        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();
            $filter->like('username','用户名');
        });

        $grid->perPages([10, 20, 30]);
        $grid->actions(function (Actions $actions) {
            // 指定主键数据不可删除，即administrator用户
            if ($actions->getKey() == 1) {
                $actions->disableDelete();
            }
        });

        $grid->tools(function (Grid\Tools $tools) {
            $tools->append(new ImportUsers());
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $userModel = config('admin.database.users_model');
        $show = new Show($userModel::findOrFail($id));

        $show->field('id', 'ID');
        $show->field('username', trans('用户名'));
        $show->field('name', trans('名称'));

        $show->divider();

        $show->field('roles', trans('角色'))->as(function ($roles) {
            return $roles->pluck('name');
        })->label();
        $show->field('permissions', trans('权限'))->as(function ($permission) {
            return $permission->pluck('name');
        })->label();
        $show->field('avatar', trans('用户头像'))->unescape()->as(function ($avatar) {
            return "<img src='{$avatar}' height='20%' width='20%'/>";
        });
        $show->field('created_at', trans('admin.created_at'));
        $show->field('updated_at', trans('admin.updated_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {
        $userModel = config('admin.database.users_model');
        $permissionModel = config('admin.database.permissions_model');
        $roleModel = config('admin.database.roles_model');
        $userTable = config('admin.database.users_table');
        $connection = config('admin.database.connection');

        $form = new Form(new $userModel());
        $form->text('username', trans('用户名'))
            ->help('登陆用户名，最好是英文或数字')
            ->autofocus()
            ->creationRules(['required', "unique:{$connection}.{$userTable}"])
            ->updateRules(['required', "unique:{$connection}.{$userTable},username,{{id}}"]);
        $form->text('name', trans('admin.name'))->rules('required')->help('显示的用户名，随意');
        $form->password('password', trans('admin.password'))
            ->help('不少于6位，英文或数字组合')
            ->rules('required|confirmed|min:6');
        $form->password('password_confirmation', trans('admin.password_confirmation'))
            ->rules('required|min:6')
            ->default(function ($form) {
                return $form->model()->password;
            });
        $form->ignore(['password_confirmation']);

        $form->divider();

        $form->image('avatar', trans('admin.avatar'));
        $form->multipleSelect('roles', trans('admin.roles'))->options($roleModel::all()->pluck('name', 'id'));
        $form->multipleSelect('permissions', trans('admin.permissions'))->options($permissionModel::all()->pluck('name', 'id'));
        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        $form->saving(function (Form $form) {
            if ($form->password && $form->model()->password != $form->password) {
                $form->password = bcrypt($form->password);
            }
        });

        $form->footer(function ($footer) {
            // 去掉`查看`checkbox
            $footer->disableViewCheck();
            // 去掉`继续编辑`checkbox
            $footer->disableEditingCheck();
            // 去掉`继续创建`checkbox
            $footer->disableCreatingCheck();
        });

        return $form;
    }
}
