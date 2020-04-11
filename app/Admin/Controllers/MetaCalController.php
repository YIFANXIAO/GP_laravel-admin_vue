<?php

namespace App\Admin\Controllers;

use App\Models\MetaCal;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MetaCalController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\MetaCal';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new MetaCal());

        $grid->column('id', __('ID'))->hide();
        $grid->column('formula_id', __('Formula id'));
        $grid->column('cal_type_id', __('Cal type id'));
        $grid->column('number', __('Number'))->editable();
        $grid->column('proportion', __('Proportion'))->editable();
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
        $show = new Show(MetaCal::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('formula_id', __('Formula id'));
        $show->field('cal_type_id', __('Cal type id'));
        $show->field('number', __('Number'));
        $show->field('proportion', __('Proportion'));
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
        $form = new Form(new MetaCal());

        $form->number('formula_id', __('Formula id'));
        $form->number('cal_type_id', __('Cal type id'));
        $form->text('number', __('Number'))->default('1');
        $form->text('proportion', __('Proportion'));

        return $form;
    }
}
