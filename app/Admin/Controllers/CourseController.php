<?php

namespace App\Admin\Controllers;

use App\Models\Course;
use App\Models\Squad;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

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

        if( !Admin::user()->isRole(config('admin.database.role_teacher')) && !Admin::user()->isAdministrator()) {
            $grid->model()
                ->whereIn('id', function ($query) {
                    $query->select('course_id');
                    $query->from('squads_courses');
                    $query->whereIn('squad_id', function ($query) {
                        $query->select('squad_id');
                        $query->from('student_squad');
                        $query->where('student_id', Admin::user()->id);
                    });
                });
        }

        $grid->column('id', __('Id'))->hide();
        $grid->column('full_name', __('课程全称'))->copyable();
        $grid->column('attribute', __('属性'));
        $grid->column('credit', __('学分'))->label();
        $grid->column('course_type.name', __('课程类型'))->label();
        $grid->column('teachers', __('授课教师'))->pluck('name')->label();
        $grid->column('location', __('授课地点'))->label();
        $grid->column('squads', __('选修班级'))->pluck('name')->label();
        $grid->column('Schedule_text', __('时间安排'));
        $grid->column('Schedule_image', __('课程表'))->hide();
        $grid->column('created_at', __('创建日期'))->hide();
        $grid->column('updated_at', __('更新日期'))->hide();

        if (!Admin::user()->can('course.createBtn')) {
            $grid->disableCreateButton();
        }

        $grid->batchActions(function ($batch) {
            if(!Admin::user()->can('course.deleteBtn')) {
                $batch->disableDelete();
            }
        });

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if(!Admin::user()->can('course.viewBtn')) {
                $actions->disableView();
            }
            if(!Admin::user()->can('course.editBtn')) {
                $actions->disableEdit();
            }
            if(!Admin::user()->can('course.deleteBtn')) {
                $actions->disableDelete();
            }
        });

        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            $filter->column(1/2, function ($filter) {
                $filter->like('full_name','课程全称');
            });

            $filter->column(1/2, function ($filter) {
                $filter->like('attribute','属性');
            });
        });

//        $grid->disableCreateButton();
//        $grid->disableFilter();
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
        $show = new Show(Course::findOrFail($id));

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

            $teachers->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
                $actions->disableEdit();
                $actions->disableDelete();
            });

            $teachers->disableCreateButton();
            $teachers->disableFilter();
            $teachers->disableExport();
            $teachers->disableColumnSelector();

            $teachers->perPages([10, 20]);

        });

        $show->squads('选修班级', function ($squads) {

            $squads->column('profession.full_name', __('专业'));
            $squads->name('班级名称')->label();
            $squads->info('简介');

            $squads->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
                $actions->disableEdit();
                $actions->disableDelete();
            });

            $squads->disableCreateButton();
            $squads->disableFilter();
            $squads->disableExport();
            $squads->disableColumnSelector();

            $squads->perPages([10, 20]);
        });

        $show->panel()
            ->tools(function ($tools) {
                if(!Admin::user()->can('course.editBtn')) {
                    $tools->disableEdit();
                }
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
        $form->multipleSelect('teachers', __('授课教师'))
//            ->options('/api/getTeachers')
            ->options(DB::table('admin_users')
                ->whereIn('id', function ($query) {
                    $query->select('user_id');
                    $query->from('admin_role_users');
                    $query->where('role_id', function ($query) {
                        $query->select('id');
                        $query->from('admin_roles');
                        $query->where('slug', config('admin.database.role_teacher'));
                    });
                })
                ->pluck('name', 'id'))
            ->rules('required');
        $form->multipleSelect('squads', __('选修班级'))
//            ->options('/api/getSquads')
            ->options(Squad::all()->pluck('name', 'id'))
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
