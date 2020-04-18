<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function getSquadByUser(Request $request) {

        // 首先获取当前（前端）用户的email，同后端用户表对比，校验所属角色是否为学生
//        $id = Auth::id();
//
        $adminUser = DB::table('users')
            ->where('id', Auth::id())
            ->first();

//        $user = $request->user();
//
//        $adminUser = DB::table('admin_users')
//                        ->where('username', $user->email)
//                        ->first();

        return $adminUser;
        // 角色为学生则查询该学生当前所属班级

        // 角色为教师或超管则查询所有班级


    }
}
