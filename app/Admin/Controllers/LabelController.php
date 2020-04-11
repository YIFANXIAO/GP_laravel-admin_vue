<?php

namespace App\Admin\Controllers;

use App\Models\Labels;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LabelController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '标签管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Labels());

        $grid->column('id', __('ID'))->hide();
        $grid->column('content', __('标签内容'))->label();
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

        //        $grid->disableCreateButton();
//        $grid->disableFilter();
        $grid->disableExport();
        $grid->disableColumnSelector();

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
        $show = new Show(Labels::findOrFail($id));

        $show->field('content', __('标签内容'));

        $show->articles('对应文章', function ($articles) {

            $articles->resource('/admin/articles');

            $articles->column('adminUser.name', __('创建人'));
            $articles->title('标题');
            $articles->intro('文章简介')->limit(20);

            $articles->disableCreateButton();
            $articles->disableFilter();
            $articles->disableExport();
            $articles->disableColumnSelector();

            $articles->perPages([10, 20, 30]);
        });

        $show->panel()
            ->tools(function ($tools) {
                $tools->disableDelete();
            });;

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Labels());

        $form->text('content', __('标签内容'));

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
