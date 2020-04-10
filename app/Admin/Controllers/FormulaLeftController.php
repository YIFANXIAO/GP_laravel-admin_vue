<?php

namespace App\Admin\Controllers;

use App\Models\FormulaLeft;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class FormulaLeftController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '分数计算公式管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new FormulaLeft());

        $grid->column('id', __('ID'))->hide();
        $grid->column('name', __('公式名称'))->label();
        $grid->column('course.full_name', __('所属课程'))->label();
        $grid->column('metaCalTypes', __('公式元计算项'))->pluck('name')->label();;
        $grid->column('pid', __('父公式'))->hide();
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

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
        $show = new Show(FormulaLeft::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('name', __('公式名称'));
        $show->field('pid', __('父节点'));
        $show->field('created_at', __('创建日期'));
        $show->field('updated_at', __('更新日期'));

        $show->course('所属课程', function ($course) {
            $course->setResource('admin/auth/users');
            $course->full_name('课程名称');
            $course->attribute('课程属性');
            $course->panel()
                ->tools(function ($tools) {
                    $tools->disableEdit();
                    $tools->disableList();
                    $tools->disableDelete();
                });
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
        $form = new Form(new FormulaLeft());

        $form->text('name', __('公式名称'));
        $form->select('course_id', __('所属课程'))
            ->options('/api/getCourses')
            ->load('pid', '/api/getPFormula')
            ->rules('required');
        $form->select('pid', __('父节点'))
            ->default(0)
            ->rules('required');

        $form->multipleSelect('metaCalTypes', __('公式元计算项'))
            ->options('/api/getMetaCalTypes')
            ->rules('required');

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
