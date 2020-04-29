<?php

namespace App\Admin\Controllers;

use App\Models\FormulaLeft;
use App\Models\MetaCalType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;

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
        $grid->column('metaCalTypes', __('公式元计算项'))->pluck('name')->label();
        $grid->column('created_at', __('创建时间'))->hide();
        $grid->column('updated_at', __('更新时间'))->hide();

        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            $filter->column(1/2, function ($filter) {
                $filter->like('name','公式名称');
            });

            $filter->column(1/2, function ($filter) {
                $filter->like('course.full_name','所属课程');
            });
        });

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
        $show = new Show(FormulaLeft::findOrFail($id));

        $show->field('name', __('公式名称'));

        $show->metaCals('元计算项设置', function ($metaCal) {

            $metaCal->resource('/admin/meta-cals');

//            $metaCal->column('formulaLeft.name', __('公式名称'));
            $metaCal->column('metaCalType.name', __('元计算项类型名'))->label()->copyable();
            $metaCal->column('number', __('计数次数'))->editable();
            $metaCal->column('proportion', __('总分占比'))->editable();

            $metaCal->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
                $actions->disableEdit();
                $actions->disableDelete();
            });

            $metaCal->disableCreateButton();
            $metaCal->disableFilter();
            $metaCal->disableExport();
            $metaCal->disableColumnSelector();

            $metaCal->perPages([10, 20, 30]);
        });

        $show->course('所属课程', function ($course) {
            $course->full_name('课程名称');
            $course->attribute('课程属性');
            $course->panel()
                ->tools(function ($tools) {
                    $tools->disableEdit();
                    $tools->disableList();
                    $tools->disableDelete();
                });
        });

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
        $form = new Form(new FormulaLeft());

        $form->text('name', __('公式名称'));

        if ($form->isCreating()) {
            $form->select('course_id', __('所属课程'))
                ->options('/api/getCourses')
                ->rules('required');
        }else {
            $form->select('course_id', __('所属课程'))
                ->options('/api/getCourses')
                ->readOnly()
                ->rules('required');
        }

        $form->multipleSelect('metaCalTypes', trans('公式元计算项'))
            ->options(MetaCalType::where('level', 1)->pluck('name', 'id'));

        $form->footer(function ($footer) {
            // 去掉`查看`checkbox
            $footer->disableViewCheck();
            // 去掉`继续编辑`checkbox
            $footer->disableEditingCheck();
            // 去掉`继续创建`checkbox
            $footer->disableCreatingCheck();
        });

        // 在表单提交前调用
        $form->submitted(function (Form $form) {

        });

        return $form;
    }
}
