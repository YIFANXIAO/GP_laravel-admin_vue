<?php

namespace App\Http\Controllers;

use App\Models\Comments;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CommentsController extends Controller
{
    /**
     * @var Comments
     */
    public $objComments;

    public function __construct()
    {
//        $this->middleware('auth');
        $this->objComments = new Comments();
    }

    public function getReplyUser($article, $admin_user, Request $request) {

        $level = $request->get('q');

        if ($level == 1) {
            $reply_user_collection = (['data' => ['id' => 0, 'text' => '默认回复用户']]);
        }else {
            $reply_user = DB::table('admin_users')
                ->whereIn('id', function ($query) use ($article, $admin_user) {
                    $query->select('user_id');
                    $query->from('comments');
                    $query->where('article_id', $article);
                    $query->where('user_id', '<>', $admin_user);
                });
            $reply_user_collection = $reply_user->get(['id', DB::raw('name as text')]);
        }

        return $reply_user_collection;

    //        $reply_comments = DB::table('comments')
//            ->select(DB::raw('id, user_id, article_id, content'))
//            ->where('article_id', \request()->get('id'))
//            ->where('user_id', '<>', Admin::user()->getAuthIdentifier())
//            ->get();

    }

    public function getPComments($article, Request $request) {

        $level = $request->get('q');

        if ($level == 1) {
            $pComments_collection = (['data' => ['id' => 0, 'text' => '默认回复节点']]);
        }else {
            $pComments = DB::table('comments')->where('article_id', $article);
            $pComments_collection = $pComments->get(['id', DB::raw('content as text')]);
        }

        return $pComments_collection;
    }


}
