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
        $grid->column('content', __('标签内容'));
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
        $show = new Show(Labels::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('content', __('标签内容'));
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更新时间'));

        $show->articles('文章', function ($articles) {

            $articles->resource('/admin/articles');

            $articles->title('标题');
            $articles->intro('文章简介')->limit(50);

            $articles->disableCreateButton();
            $articles->disableFilter();
            $articles->disableExport();
            $articles->disableColumnSelector();

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

        $form->text('content', __('Content'));

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
