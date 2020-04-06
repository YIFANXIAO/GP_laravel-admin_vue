<?php

namespace App\Admin\Controllers;

use Encore\Admin\Auth\Database\Role;
use Encore\Admin\Controllers\RoleController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AdminRoleController extends RoleController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '角色管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $roleModel = config('admin.database.roles_model');
        $grid = new Grid(new $roleModel());

        $grid->column('id', 'ID')->sortable();
        $grid->column('slug', trans('角色标识'))->help('角色的全局唯一标识');
        $grid->column('name', trans('角色名称'))->help('角色名称，无特殊要求');
        $grid->column('permissions', trans('角色权限'))->pluck('name')->label()->help('角色与权限为多对多关系');
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if ($actions->row->slug == 'administrator') {
                $actions->disableDelete();
            }
        });

        $grid->tools(function (Grid\Tools $tools) {
            $tools->batch(function (Grid\Tools\BatchActions $actions) {
                $actions->disableDelete();
            });
        });

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->like('name','角色名称');
        });

        $grid->perPages([10, 20, 30]);

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
        $roleModel = config('admin.database.roles_model');
        $show = new Show($roleModel::findOrFail($id));
        $show->field('id', 'ID');
        $show->field('slug', trans('角色标识'));
        $show->field('name', trans('角色名称'));

        $show->divider();

        $show->field('permissions', trans('角色权限'))->as(function ($permission) {
            return $permission->pluck('name');
        })->label();
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
        $permissionModel = config('admin.database.permissions_model');
        $roleModel = config('admin.database.roles_model');

        $form = new Form(new $roleModel());
        $form->text('slug', trans('角色标识'))->rules('required')->help('角色的全局唯一标识');
        $form->text('name', trans('角色名称'))->rules('required')->help('角色名称，无特殊要求');

        $form->divider();

        $form->listbox('permissions', trans('角色权限'))
            ->help('角色与权限为多对多关系')
            ->options($permissionModel::all()->pluck('name', 'id'));

        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

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
