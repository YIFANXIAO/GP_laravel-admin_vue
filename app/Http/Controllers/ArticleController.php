<?php

namespace App\Http\Controllers;

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
//        $this->middleware('auth');
        $this->objTest = new Article();
    }
    public function getArticleList()
    {
        return $articles = DB::table('article')->simplePaginate(1);

//        return $this->objTest->getInfo();
    }
}
