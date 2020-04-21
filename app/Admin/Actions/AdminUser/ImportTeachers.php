<?php

namespace App\Admin\Actions\AdminUser;

use App\Imports\AdminRoleUserImport;
use App\Imports\AdminUsersImport;
use App\Imports\StudentSquadImport;
use App\Imports\UsersImport;
use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;

class ImportTeachers extends Action
{
    public $name = '导入教师用户';

    protected $selector = '.import-teachers';

    public function handle(Request $request)
    {
        // 获取到上传的文件
        $file = $request->file('file');

        DB::transaction(function () use ($file) {
            try {
                Excel::import(new AdminUsersImport, $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入后台教师用户信息错误：'.$e->getMessage());
            }
            try {
                Excel::import(new UsersImport(), $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入前台教师用户信息错误：'.$e->getMessage());
            }
            try {
                Excel::import(new AdminRoleUserImport(), $file);
            } catch (\Exception $e) {
                return $this->response()->error('导入教师用户与角色绑定信息错误：'.$e->getMessage());
            }
        });

        return $this->response()->topRight()->success('导入教师用户信息成功')->timeout(1000)->refresh();
    }

    public function form()
    {
        $this->file('file', '请选择导入文件（excel）');
    }

    public function html()
    {
        return <<<HTML
        <a class="btn btn-sm btn-default import-teachers">导入教师用户</a>
HTML;
    }
}