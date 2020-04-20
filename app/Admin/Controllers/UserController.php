<?php

namespace App\Admin\Controllers;

use App\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Hash;

class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '前台用户管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User());

        if( !Admin::user()->isRole('teacher') && !Admin::user()->isAdministrator()) {
            $grid->model()
                ->whereIn('email', function ($query) {
                    $query->select('username');
                    $query->from('admin_users');
                    $query->where('id',  Admin::user()->id);
                });
        }

        $grid->column('id', __('Id'))->hide();
        $grid->column('name', __('姓名'));
        $grid->column('email', __('学号'));
        $grid->column('password', __('密码'))->hide();
        $grid->column('remember_token', __('Remember token'))->hide();
        $grid->column('created_at', __('创建时间'))->hide();
        $grid->column('updated_at', __('更新时间'))->hide();

        if (!Admin::user()->can('user.createBtn')) {
            $grid->disableCreateButton();
        }

        $grid->batchActions(function ($batch) {
            if(!Admin::user()->can('user.deleteBtn')) {
                $batch->disableDelete();
            }
        });

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if(!Admin::user()->can('user.viewBtn')) {
                $actions->disableView();
            }
            if(!Admin::user()->can('user.editBtn')) {
                $actions->disableEdit();
            }
            if(!Admin::user()->can('user.deleteBtn')) {
                $actions->disableDelete();
            }
        });

        $grid->disableFilter();
        $grid->disableExport();
        $grid->disableColumnSelector();

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
        $show = new Show(User::findOrFail($id));

        $show->field('name', __('姓名'));
        $show->field('email', __('学号'));

        $show->panel()
            ->tools(function ($tools) {
                $tools->disableDelete();
            });

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new User());

        $form->text('name', __('姓名'));

        if ($form->isCreating()) {
            $form->text('email', __('学号'));
        }else {
            $form->text('email', __('学号'))->readonly();
        };
        $form->password('password', __('新密码'));
        $form->hidden('remember_token', __('Remember token'));

        $form->saving(function (Form $form) {
            $form->password = password_hash($form->password, PASSWORD_BCRYPT);
        });

        $form->tools(function (Form\Tools $tools) {

            if(!Admin::user()->can('user.deleteBtn')) {
                // 去掉`删除`按钮
                $tools->disableDelete();
            }
            if(!Admin::user()->can('user.viewBtn')) {
                // 去掉`查看`按钮
                $tools->disableView();
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
