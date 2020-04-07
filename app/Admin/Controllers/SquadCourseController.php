<?php

namespace App\Admin\Controllers;

use App\Models\SquadCourse;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SquadCourseController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\SquadCourse';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new SquadCourse());

        $grid->column('squad_id', __('Squad id'));
        $grid->column('course_id', __('Course id'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(SquadCourse::findOrFail($id));

        $show->field('squad_id', __('Squad id'));
        $show->field('course_id', __('Course id'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new SquadCourse());

        $form->number('squad_id', __('Squad id'));
        $form->number('course_id', __('Course id'));

        return $form;
    }
}
