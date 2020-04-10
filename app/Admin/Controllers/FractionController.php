<?php

namespace App\Admin\Controllers;

use App\Models\Fraction;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class FractionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\Fraction';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Fraction());

        $grid->column('id', __('Id'));
        $grid->column('student_id', __('Student id'));
        $grid->column('course_id', __('Course id'));
        $grid->column('cal_type_id', __('Cal type id'));
        $grid->column('order', __('Order'));
        $grid->column('fraction', __('Fraction'));
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
        $show = new Show(Fraction::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('student_id', __('Student id'));
        $show->field('course_id', __('Course id'));
        $show->field('cal_type_id', __('Cal type id'));
        $show->field('order', __('Order'));
        $show->field('fraction', __('Fraction'));
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
        $form = new Form(new Fraction());

        $form->number('student_id', __('Student id'));
        $form->number('course_id', __('Course id'));
        $form->number('cal_type_id', __('Cal type id'));
        $form->number('order', __('Order'));
        $form->decimal('fraction', __('Fraction'));

        return $form;
    }
}
