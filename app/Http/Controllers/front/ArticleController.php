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

    public function getArticleList()
    {
        return $this->objTest->getInfo();
    }

    // 文章详情页，返回文章信息
    public function getArticleById(Request $request)
    {
        $article_request_data = $request->get('article_request_data');
        $article_id = array_get($article_request_data, 'article_id');

        $article = DB::table('article')
            ->where('id', $article_id)
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
            ->where('article_id', $article_id)
            ->where('level', 1)
            ->get();

        $result = collect();

        // 循环一级评论，分别查询该评论下的二级评论
        foreach ($pComments as $key => $value)
        {
            $childComments = DB::table('comments')
                ->where('pid', $value->id)
                ->get();

            $singleComment = collect();
            $singleComment->put('p_comment', $value);
            $singleComment->put('child_comments', $childComments);

            $result->push($singleComment);
        }

        return $result;

    }
}
