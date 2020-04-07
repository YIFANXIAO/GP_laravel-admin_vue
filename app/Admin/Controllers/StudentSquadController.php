<?php

namespace App\Admin\Controllers;

use App\Models\Squad;
use App\Models\StudentSquad;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class StudentSquadController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '学生班级分配';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new StudentSquad());

        $grid->column('student_id', __('Student id'));
        $grid->column('squad_id', __('Squad id'));
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
        $show = new Show(StudentSquad::findOrFail($id));

        $show->field('student_id', __('Student id'));
        $show->field('squad_id', __('Squad id'));
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
        $belong_squad_id = \request()->get('squad_id');

        $form = new Form(new StudentSquad());

        $form->select('squad_id', __('班级'))
            ->options('/api/getSquads/'.$belong_squad_id)
            ->default($belong_squad_id)
            ->readOnly();
        $form->select('student_id', __('学生'))
            ->options('/api/getStudents');

        $form->tools(function (Form\Tools $tools) {
            // 去掉`列表`按钮
            $tools->disableList();
        });

        $form->footer(function ($footer) {
            // 去掉`查看`checkbox
            $footer->disableViewCheck();
            // 去掉`继续编辑`checkbox
            $footer->disableEditingCheck();
            // 去掉`继续创建`checkbox
            $footer->disableCreatingCheck();

        });

        $form->saved(function (Form $form) use ($belong_squad_id) {
            // 跳转页面
            return redirect('/admin/squads/'.$belong_squad_id);
        });

        return $form;
    }
}
