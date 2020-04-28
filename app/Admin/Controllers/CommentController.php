<?php

namespace App\Admin\Controllers;

use App\Models\AdminUser;
use App\Models\Article;
use App\Models\Comments;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Row;
use Encore\Admin\Show;
use Illuminate\Support\MessageBag;

class CommentController extends AdminController
{

    use HasResourceActions;

    protected $title = '评论管理';

    protected function grid()
    {
        $grid = new Grid(new Comments());

        $grid->column('id', __('Id'));
        $grid->column('article.title', __('所属文章'));
        $grid->column('user.name', __('评论用户'));
        $grid->column('reply_comment.content', __('回复评论'));
        $grid->column('pid', __('Pid'))->hide();
        $grid->column('level', __('Level'))->hide();
        $grid->column('content', __('评论内容'));
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
        $show = new Show(Comments::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('article_id', __('Article id'));
        $show->field('user_id', __('User id'));
        $show->field('reply_comment_id', __('Reply user id'));
        $show->field('pid', __('Pid'));
        $show->field('level', __('Level'));
        $show->field('content', __('Content'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @param $id
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Comments());

        $article_id = \request()->get('article_id');

        $form->hidden('article_id', '评论文章')->default($article_id);
        $form->hidden('user_id', __('评论用户'));
        $form->hidden('level', __('评论类型'));
        $form->hidden('reply_comment_id', __('回复用户'));
        $form->hidden('pid', __('评论父节点'));

        $form->textarea('content', __('评论内容'))
            ->rules('required');

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

        $form->submitted(function (Form $form) {
            $form->user_id = Admin::user()->getAuthIdentifier();
            $form->level = 1;
            $form->reply_comment_id = 0;
            $form->pid = 0;
        });

        $form->saved(function (Form $form) use ($article_id) {
            // 跳转页面
            return redirect('/admin/articles/'.$article_id);
        });

        return $form;
    }
}
