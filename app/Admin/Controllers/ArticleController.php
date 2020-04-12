<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Comments\replyComment;
use App\Models\Article;
use App\Models\Comments;
use Encore\Admin\Auth\Permission;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

class ArticleController extends AdminController
{

    use HasResourceActions;

    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '博文随笔';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article());

        $grid->quickSearch('title', 'intro');

        // 当前登陆角色非超管和教师，限制显示的数据，只显示当前用户发布的
        if( !Admin::user()->isRole('teacher ') && !Admin::user()->isAdministrator()) {
            $grid->model()->where('user_id', Admin::user()->id);
        }

        $grid->column('id', __('ID'))->hide();
        $grid->column('adminUser.name', __('创建人'));
        $grid->column('title',__('文章标题'));
        $grid->column('labels', trans('文章标签'))->pluck('content')->label();
        $grid->column('intro', __('文章简介'))->limit(20);
        $grid->column('banner', __('封面图'))->hide();
        $grid->column('content', __('文章内容'))->hide();
        $grid->column('created_at', __('创建时间'))->hide();
        $grid->column('updated_at', __('更新时间'))->hide();

        $grid->filter(function ($filter) {
            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            $filter->column(1/2, function ($filter) {
                $filter->like('title','文章标题');
            });

            $filter->column(1/2, function ($filter) {
                $filter->like('intro','文章简介');
            });
        });

        if (!Admin::user()->can('article.createBtn')) {
            $grid->disableCreateButton();
        }

//        $grid->disableFilter();

        $grid->disableExport();
        $grid->disableColumnSelector();

        $grid->perPages([10, 20, 30]);

        return $grid;
    }

    public function show($id, Content $content)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->row(function (Row $row) use ($id) {
                $row->column(12, function (Column $column) use ($id) {
                    $column->row($this->detail($id));
//                    $column->row(Comments::tree(function ($tree) {
//                        $tree->branch(function ($branch) {
//                            $content =  $branch['content'] ;
//                            return "$content";
//                        });
//                    }));
                });
            });


        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        Permission::check('article.view');

        $show = new Show(Article::findOrFail($id));

        $show->field('title', __('文章标题'));
        $show->field('labels', trans('文章标签'))->as(function ($labels) {
            return $labels->pluck('content');
        })->label();
        $show->field('intro', __('文章简介'));
        $show->field('banner', __('封面图'))->image();

        $show->comments('评论', function ($comments) use ($id) {

//            return Admin::content(function (Content $content) {
//                $content->header('树状模型');
//                $content->body(Comments::tree(function ($tree) {
//                    $tree->branch(function ($branch) {
//                        $content =  $branch['content'] ;
//                        return "$content";
//                    });
//                }));
//            });

            $comments->resource('/admin/comments');

            $comments->user()->name("发布用户");
            $comments->reply_comment()->content("回复评论")->replace([null => '回复文章']);
            $comments->content('评论内容')->limit(50);

            if (!Admin::user()->can('comments.createBtn')) {
                $comments->disableCreateButton();
            }

            $comments->disableFilter();
            $comments->disableExport();
            $comments->disableColumnSelector();
            $comments->batchActions(function ($batch) {
                $batch->disableDelete();
            });

            $comments->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
                $actions->disableEdit();
                $actions->add(new replyComment());
//                $actions->disableDelete();
            });

            $comments->perPages([10, 20, 30]);

        });

        if( Admin::user()->isRole('teacher ') || Admin::user()->isAdministrator()) {
            $show->adminUser('创建用户', function ($adminUser) {
                $adminUser->setResource('admin/auth/users');
                $adminUser->username('创建用户');
                $adminUser->name('用户名');
                $adminUser->avatar('用户头像')->image();
                $adminUser->panel()
                    ->tools(function ($tools) {
                        $tools->disableEdit();
                        $tools->disableList();
                        $tools->disableDelete();
                    });
            });
        }

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

        Permission::check('article.edit');

        $labelModel = config('admin.database.labels_model');

        $form = new Form(new Article());

        $form->hidden('user_id', __('创建用户ID'))->default(Admin::user()->getAuthIdentifier());
        $form->text('title', __('文章标题'))
            ->rules('required');

        $form->multipleSelect('labels', trans('文章标签'))->options($labelModel::all()->pluck('content', 'id'));

        $form->textarea('intro', __('文章简介'))
            ->rules('required|min:10');
        $form->image('banner', __('封面图'))
            ->default('images/unnamed.jpg')
            ->help("可以不选,将会添加默认封面");
        $form->editormd('content',"文章正文");

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
