<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArticleController extends BaseController
{
    /**
     * @var test
     */
    public $objTest;

    public function __construct()
    {
        $this->middleware('auth');
        $this->objTest = new Article();
    }

    // 返回文章列表界面
    public function getArticlesView()
    {
        return view('articles');
    }

    public function getArticleDetailView($article_id)
    {
        return view('article_detail', ['article_id' => $article_id]);
    }

    public function getArticleList(Request $request)
    {
        $ArticleListRequestData = $request->get("ArticleListRequestData");
        $perPage = array_get($ArticleListRequestData, 'row');
        $columns = ['*'];
        $pageName = 'page';
        $currentPage = array_get($ArticleListRequestData, 'page');

        $articles = DB::table('article')
            ->paginate($perPage, $columns, $pageName, $currentPage);

        return $articles;
    }

    // 文章详情页，返回文章信息
    public function getArticleById(Request $request)
    {
        $article_request_data = $request->get('article_request_data');
        $article_id = array_get($article_request_data, 'article_id');

        $article = DB::table('article')
            ->leftJoin('admin_users', 'admin_users.id', '=', 'article.user_id')
            ->select('admin_users.name as user_name', 'article.banner', 'article.content', 'article.created_at', 'article.id', 'article.intro', 'article.title', 'article.updated_at')
            ->where('article.id', $article_id)
            ->get()
            ->first();

        $result = collect();
        $result->put('article', $article);

        return $result;
    }

    // 文章详情页，获取该文章的所有评论，按树形排列
    public function getArticleComments(Request $request)
    {
        $article_request_data = $request->get('article_request_data');
        $article_id = array_get($article_request_data, 'article_id');

        // 先查询该文章下的，一级评论
        $pComments = DB::table('comments')
            ->leftJoin('admin_users', 'admin_users.id', '=', 'comments.user_id')
            ->select('comments.id', 'admin_users.name as username', 'comments.content', 'comments.created_at')
            ->where('comments.article_id', $article_id)
            ->where('comments.level', 1)
            ->get();

        $result = collect();

        // 循环一级评论，分别查询该评论下的二级评论
        foreach ($pComments as $key => $value)
        {
            $childComments = DB::table('comments')
                ->leftJoin('admin_users', 'admin_users.id', '=', 'comments.user_id')
                ->leftJoin('comments as replyComments', 'replyComments.id', '=', 'comments.reply_comment_id')
                ->leftJoin('admin_users as replyAdminUser', 'replyAdminUser.id', '=', 'replyComments.user_id')
                ->select('replyComments.content as replyComment', 'comments.id', 'admin_users.name as username', 'comments.content', 'comments.created_at', 'replyAdminUser.name as replyUserName')
                ->where('comments.pid', $value->id)
                ->get();

            $singleComment = collect();
            $singleComment->put('p_comment', $value);
            $singleComment->put('child_comments', $childComments);

            $result->push($singleComment);
        }

        return $result;

    }

    public function getArticleLabels(Request $request) {
        $article_request_data = $request->get('article_request_data');
        $article_id = array_get($article_request_data, 'article_id');

        $labels = DB::table('labels')
            ->select('labels.id', 'labels.content')
            ->whereIn('id', function ($query) use ($article_id) {
                $query->select('label_id');
                $query->from('articles_labels');
                $query->where('article_id', $article_id);
            })
            ->get();

        return $labels;
    }
}
