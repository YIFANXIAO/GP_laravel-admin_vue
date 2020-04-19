<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArticleController extends Controller
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

    public function getArticleList()
    {
//        return $articles = DB::table('article')->first();
//            ->simplePaginate(1);

        return $this->objTest->getInfo();
    }
}
