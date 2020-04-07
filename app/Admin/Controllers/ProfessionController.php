<?php

namespace App\Admin\Controllers;

use App\Models\Profession;
use Encore\Admin\Controllers\AdminController;
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

        $grid->column('id', __('ID'))->hide();
        $grid->column('full_name', __('专业全称'));
        $grid->column('intro', __('简介'));
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

        $grid->disableColumnSelector();

        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();
            $filter->like('full_name','专业全称');
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
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更新时间'));

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
