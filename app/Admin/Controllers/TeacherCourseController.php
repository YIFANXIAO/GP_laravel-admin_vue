<?php

namespace App\Admin\Controllers;

use App\Models\TeacherCourse;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class TeacherCourseController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '课程教师分配';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new TeacherCourse());

        $grid->column('teacher_id', __('授课教师'));
        $grid->column('course_id', __('课程'));
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
        $show = new Show(TeacherCourse::findOrFail($id));

        $show->field('teacher_id', __('授课教师'));
        $show->field('course_id', __('课程'));
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更新时间'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $belong_course_id = \request()->get('course_id');

        $form = new Form(new TeacherCourse());

        $form->select('course_id', __('课程'))
            ->options('/api/getCurrentCourse/'.$belong_course_id)
            ->default($belong_course_id)
            ->readOnly();
        $form->multipleSelect('teacher_id', __('授课教师'))
            ->options('/api/getTeachers');

        $form->tools(function (Form\Tools $tools) {
            // 去掉`列表`按钮
            $tools->disableList();
            // 去掉`删除`按钮
            $tools->disableDelete();
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
