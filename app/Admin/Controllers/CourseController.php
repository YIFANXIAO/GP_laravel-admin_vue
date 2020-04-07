<?php

namespace App\Admin\Controllers;

use App\Models\Course;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CourseController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '课程管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Course());

        $grid->column('id', __('Id'))->hide();
        $grid->column('full_name', __('课程全称'));
        $grid->column('attribute', __('属性'));
        $grid->column('credit', __('学分'))->label();
        $grid->column('course_type.name', __('课程类型'))->label();
        $grid->column('teachers', __('授课教师'))->pluck('name')->label();
        $grid->column('location', __('授课地点'))->label();
        $grid->column('squads', __('教授班级'))->pluck('name')->label();
        $grid->column('Schedule_text', __('时间安排'));
        $grid->column('Schedule_image', __('课程表'))->hide();
        $grid->column('created_at', __('创建日期'))->hide();
        $grid->column('updated_at', __('更新日期'))->hide();

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
        $show = new Show(Course::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('full_name', __('课程全称'));
        $show->field('attribute', __('属性'));
        $show->field('credit', __('学分'));
        $show->field('location', __('授课地点'));
        $show->field('Schedule_text', __('时间安排'));
        $show->field('Schedule_image', __('课程表'))->image();

        $show->course_type('课程类型', function ($courses_type) {

            $courses_type->name('类型名称');
            $courses_type->intro('简介');

            $courses_type->panel()
                ->tools(function ($tools) {
                    $tools->disableEdit();
                    $tools->disableList();
                    $tools->disableDelete();
                });
        });

        $show->teacherCourse('授课教师', function ($teachers) {

            $teachers->resource('/admin/teacher-courses');

            $teachers->column('teacher.name', '教师名称');
            $teachers->column('course.full_name', '教授课程')->label();

//            $teachers->disableCreateButton();
            $teachers->disableFilter();
            $teachers->disableExport();
            $teachers->disableColumnSelector();
        });

        $show->squads('教授班级', function ($squads) {

            $squads->column('profession.full_name', __('专业'));
            $squads->name('班级名称')->label();
            $squads->info('简介');

            $squads->disableCreateButton();
            $squads->disableFilter();
            $squads->disableExport();
            $squads->disableColumnSelector();
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
        $form = new Form(new Course());

        $form->text('full_name', __('课程全称'))
            ->rules('required');

        $attribute = [
            '必修课' => '必修课',
            '限选课' => '限选课',
        ];

        $form->select('attribute', __('属性'))
            ->options($attribute)
            ->rules('required');
        $form->select('courses_type_id', __('课程类型'))
            ->options('/api/getCourseTypes')
            ->rules('required');
        $form->multipleSelect('squads', __('教授班级'))
            ->options('/api/getSquads')
            ->rules('required');

        $form->divider();

        $form->number('credit', __('学分'))
            ->rules('required');
        $form->text('location', __('授课地点'))
            ->rules('required');
        $form->text('Schedule_text', __('时间安排'))
            ->rules('required');
        $form->image('Schedule_image', __('课程表'));

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
