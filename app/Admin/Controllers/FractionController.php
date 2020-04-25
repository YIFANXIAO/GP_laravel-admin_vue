<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Fractions\ImportFractions;
use App\Models\Fraction;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;

class FractionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '学生分数管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Fraction());

        if( !Admin::user()->isRole('teacher') && !Admin::user()->isAdministrator()) {
            $grid->model()
                ->where('student_id', Admin::user()->id);
        }

        $grid->column('id', __('ID'))->hide();
        $grid->column('student.name', __('学生名称'));
        $grid->column('course.full_name', __('课程名称'));
        $grid->column('metaCalType.name', __('分数类型'))->label();
        $grid->column('order', __('次序'))->label()->sortable();
        $grid->column('fraction', __('分数'));
        $grid->column('created_at', __('创建日期'))->hide();
        $grid->column('updated_at', __('更新日期'))->hide();

        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            $filter->column(1/2, function ($filter) {
                $filter->like('student.name','学生姓名');
                $filter->like('course.full_name','课程名称');
            });

            $filter->column(1/2, function ($filter) {
                $filter->like('metaCalType.name','分数类型');
                $filter->like('order','次序');
            });

        });

        if (!Admin::user()->can('fraction.createBtn')) {
            $grid->disableCreateButton();
        }

        $grid->batchActions(function ($batch) {
            if(!Admin::user()->can('fraction.deleteBtn')) {
                $batch->disableDelete();
            }
        });

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if(!Admin::user()->can('fraction.viewBtn ')) {
                $actions->disableView();
            }
            if(!Admin::user()->can('fraction.editBtn')) {
                $actions->disableEdit();
            }
            if(!Admin::user()->can('fraction.deleteBtn')) {
                $actions->disableDelete();
            }
        });

        $grid->tools(function (Grid\Tools $tools) {
            if(Admin::user()->can('fraction.importBtn')) {
                $tools->append(new ImportFractions());
            }
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
        $show = new Show(Fraction::findOrFail($id));

        $show->field('fraction', __('成绩'));
        $show->field('order', __('次序'));

        $show->metaCalType('分数类型', function ($metaCalType){

            $metaCalType->name('类型名称');

            $metaCalType->panel()
                ->tools(function ($tools) {
                    $tools->disableEdit();
                    $tools->disableList();
                    $tools->disableDelete();
                });

        });

        $show->course('课程', function ($course){

            $course->full_name('课程全称');
            $course->attribute('属性');

            $course->panel()
                ->tools(function ($tools) {
                    $tools->disableEdit();
                    $tools->disableList();
                    $tools->disableDelete();
                });

        });

        $show->student('学生', function ($student){

            $student->name('学生名称');
            $student->avatar('头像')->image();

            $student->panel()
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
        $form = new Form(new Fraction());

        if ($form->isCreating()) {
            $form->select('course_id', __('课程'))
                ->options('/api/getCourses')
                ->rules('required')
                ->loads(['student_id', 'cal_type_id'], ['/api/getDesignatedStudents', '/api/getDesignatedMetaCalTypes']);
        }else{
            $form->select('course_id', __('课程'))
                ->options('/api/getCourses')
                ->rules('required');
        }

        if ($form->isCreating()) {
            $form->select('student_id', __('学生'))
                ->rules('required');
        }else{
            $form->hidden('student_id', __('学生'))
                ->readOnly()
                ->rules('required');
        }

        if ($form->isCreating()) {
            $form->select('cal_type_id', __('分数类型'))
                ->rules('required');
        }else{
            $form->hidden('cal_type_id', __('分数类型'))
                ->readOnly()
                ->rules('required');
        }

        $form->hidden('order', __('Order'))
            ->rules('required')
            ->default(0);

        $form->decimal('fraction', __('分数'))
            ->rules('required');

        // 在表单提交前调用
        $form->submitted(function (Form $form) {

            if ($form->isCreating()) {
                $fractions = DB::table('fraction')
                    ->where('student_id', \request('student_id'))
                    ->where('course_id', \request('course_id'))
                    ->where('cal_type_id', \request('cal_type_id'))
                    ->orderBy('order', 'desc')
                    ->first();

                // 判断order的赋值是否合法，以此判定能否提交
                $metaCal = DB::table('meta_cal')
                    ->select(DB::raw('number'))
                    ->where('cal_type_id', \request('cal_type_id'))
                    ->whereIn('formula_id', function ($query) {
                        $query->select('id');
                        $query->from('formula_left');
                        $query->where('course_id', \request('course_id'));
                        $query->where('pid', 0);
                    })
                    ->first();

                // 对查出来的两个参数进行判空
                if ($metaCal == null) {
                    $error = new MessageBag([
                        'title'   => '出错了',
                        'message' => '所选课程未录入根计算公式，请先录入',
                    ]);
                    return back()->with(compact('error'));
                }else if ($fractions == null || $fractions->order >= $metaCal->number ) {
                    $error = new MessageBag([
                        'title'   => '出错了',
                        'message' => '当前学生的该项成绩已全部录入，请选择其他学生录入成绩',
                    ]);
                    return back()->with(compact('error'));
                }else {
                    if ($fractions == null) {
                        $form->order = 1;
                    }else {
                        $form->order = $fractions->order + 1;
                    }
                }
            }
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
