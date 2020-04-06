<?php

namespace App\Admin\Controllers;

use Encore\Admin\Auth\Database\Menu;
use Encore\Admin\Controllers\MenuController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Box;

class AdminMenuController extends MenuController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '前端菜单管理';

    public function index(Content $content)
    {
//        $content = parent::index($content);
//
//        return $content;

        return $content
            ->title(trans('admin.menu'))
            ->description(trans('admin.list'))
            ->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());

                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_url('auth/menu'));

                    $menuModel = config('admin.database.menu_model');
                    $permissionModel = config('admin.database.permissions_model');
                    $roleModel = config('admin.database.roles_model');

                    $form->select('parent_id', trans('admin.parent_id'))->options($menuModel::selectOptions());
                    $form->text('title', trans('菜单名称'))->rules('required');
                    $form->icon('icon', trans('菜单图标'))->default('fa-bars')->rules('required');
                    $form->text('uri', trans('菜单路径'))->help('与后台路由一致');
                    $form->multipleSelect('roles', trans('admin.roles'))->options($roleModel::all()->pluck('name', 'id'));
                    if ((new $menuModel())->withPermission()) {
                        $form->select('permission', trans('admin.permission'))->options($permissionModel::pluck('name', 'slug'));
                    }
                    $form->hidden('_token')->default(csrf_token());

                    $column->append((new Box(trans('admin.new'), $form))->style('success'));
                });
            });
    }

    public function show($id)
    {
        return parent::show($id);
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {
        $menuModel = config('admin.database.menu_model');
        $permissionModel = config('admin.database.permissions_model');
        $roleModel = config('admin.database.roles_model');

        $form = new Form(new $menuModel());

//        $form->display('id', 'ID');

        $form->select('parent_id', trans('admin.parent_id'))->options($menuModel::selectOptions());

        $form->text('title', trans('菜单名称'))->rules('required');

        $form->icon('icon', trans('菜单图标'))->default('fa-bars')->rules('required');

        $form->text('uri', trans('菜单路径'))->help('与后台路由一致');

        $form->divider();

        $form->multipleSelect('roles', trans('admin.roles'))->options($roleModel::all()->pluck('name', 'id'));
        if ($form->model()->withPermission()) {
            $form->select('permission', trans('admin.permission'))->options($permissionModel::pluck('name', 'slug'));
        }

        $form->display('created_at', trans('admin.created_at'));

        $form->display('updated_at', trans('admin.updated_at'));

        $form->tools(function (Form\Tools $tools) {
            // 去掉`查看`按钮
            $tools->disableView();
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
