<?php

namespace App\Admin\Actions\Comments;

use App\Models\Comments;
use Encore\Admin\Actions\RowAction;
use Encore\Admin\Facades\Admin;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class replyComment extends RowAction
{
    public $name = '回复评论';

    public function handle(Model $model, Request $request)
    {
        $comment = new Comments();

        $comment->article_id = $model->article_id;
        $comment->user_id = Admin::user()->getAuthIdentifier();
        $comment->reply_comment_id = $model->id;

        if ($model->pid == 0) {
            $comment->pid = $model->id;
        }else {
            $comment->pid = $model->pid;
        }

        $comment->level = 2;
        $comment->content = $request->get('content');

        try {
            $comment->save();
        } catch (\Exception $e) {
            return $this->response()->error('回复评论失败：'.$e->getMessage());
        }

        return $this->response()->success('回复成功')->refresh();
    }

    public function form()
    {
        $this->textarea('content', '请输入您的评论内容……');
    }

}