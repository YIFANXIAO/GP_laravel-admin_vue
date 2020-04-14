<?php

namespace App\Admin\Actions\AdminUser;

use App\Imports\AdminRoleUserImport;
use App\Imports\AdminUsersImport;
use App\Imports\StudentSquadImport;
use App\Imports\UsersImport;
use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\DB;

class ImportUsers extends Action
{
    public $name = '导入用户';

    protected $selector = '.import-users';

    public function handle(Request $request)
    {
        // 获取到上传的文件
        $file = $request->file('file');

        DB::transaction(function () use ($file) {
            try {
                Excel::import(new AdminUsersImport, $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入后台用户信息错误：'.$e->getMessage());
            }
            try {
                Excel::import(new UsersImport(), $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入前台用户信息错误：'.$e->getMessage());
            }
            try {
                Excel::import(new AdminRoleUserImport(), $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入用户与角色绑定信息错误：'.$e->getMessage());
            }
            try {
                Excel::import(new StudentSquadImport(), $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入学生与班级绑定信息出错：'.$e->getMessage());
            }
        });

        return $this->response()->topRight()->success('导入用户信息成功')->timeout(1000)->refresh();
    }

    public function form()
    {
        $this->file('file', '请选择文件');
    }

    public function html()
    {
        return <<<HTML
        <a class="btn btn-sm btn-default import-users">导入用户</a>
HTML;
    }
}