<?php

namespace App\Admin\Actions\AdminUser;

use App\Imports\AdminRoleUserImport;
use App\Imports\AdminUsersImport;
use App\Imports\StudentSquadImport;
use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ImportUsers extends Action
{
    public $name = '导入用户';

    protected $selector = '.import-users';

    public function handle(Request $request)
    {
        // 获取到上传的文件
        $file = $request->file('file');
        // 这里使用tryCatch，是因为会报错（start row(2) beyond row(1) 貌似是个官方bug，未解决）
        // 正常使用没问题，但存在隐患，待优化：用户导入不正常、到导入了绑定关系这种情况
        try {
            Excel::import(new AdminUsersImport, $file);
        } catch (\Exception $e) {
//            return $this->response()->error('导入用户信息错误：'.$e->getMessage());
        }
        try {
            Excel::import(new AdminRoleUserImport(), $file);
        } catch (\Exception $e) {
//            return $this->response()->error('导入用户与角色绑定信息错误：'.$e->getMessage());
        }
        try {
            Excel::import(new StudentSquadImport(), $file);
        } catch (\Exception $e) {
//            return $this->response()->error('导入学生与班级绑定信息出错：'.$e->getMessage());
        }

        return $this->response()->topRight()->success('成功导入用户信息')->timeout(1000)->refresh();
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