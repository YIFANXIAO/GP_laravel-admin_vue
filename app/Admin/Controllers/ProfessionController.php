<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Comments\replyComment;
use App\Models\Profession;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProfessionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专业管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Profession());



        // 当前登陆角色非超管和教师，限制显示的数据，只显示当前用户发布的
        if( !Admin::user()->isRole(config('admin.database.role_teacher')) && !Admin::user()->isAdministrator()) {
            $grid->model()
                ->whereIn('id', function ($query) {
                    $query->select('profession_id');
                    $query->from('squad');
                    $query->whereIn('id', function ($query) {
                        $query->select('squad_id');
                        $query->from('student_squad');
                        $query->where('student_id', Admin::user()->id);
                    });
                });
        }

        $grid->column('id', __('ID'))->hide();
        $grid->column('full_name', __('专业全称'));
        $grid->column('intro', __('简介'));
        $grid->column('created_at', __('创建时间'))->hide();
        $grid->column('updated_at', __('更新时间'))->hide();

        if (!Admin::user()->can('professions.createBtn')) {
            $grid->disableCreateButton();
        }
        $grid->disableExport();
        $grid->disableColumnSelector();

        $grid->batchActions(function ($batch) {
            if(!Admin::user()->can('professions.deleteBtn')) {
                $batch->disableDelete();
            }
        });

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if(!Admin::user()->can('professions.viewBtn')) {
                $actions->disableEdit();
            }
            if(!Admin::user()->can('professions.editBtn')) {
                $actions->disableView();
            }
            if(!Admin::user()->can('professions.deleteBtn')) {
                $actions->disableDelete();
            }
        });

        $grid->perPages([10, 20, 30]);

        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            $filter->column(1/2, function ($filter) {
                $filter->like('full_name','专业全称');
            });

            $filter->column(1/2, function ($filter) {
                $filter->like('intro','简介');
            });

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
        $show = new Show(Profession::findOrFail($id));

//        $show->field('id', __('Id'));
        $show->field('full_name', __('专业全称'));
        $show->field('intro', __('简介'));

        $show->panel()
            ->tools(function ($tools) {
                $tools->disableDelete();
            });;

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Profession());

        $form->text('full_name', __('专业全称'));
        $form->text('intro', __('简介'));

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
