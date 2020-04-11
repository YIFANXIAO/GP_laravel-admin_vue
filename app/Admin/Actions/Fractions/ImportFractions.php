<?php

namespace App\Admin\Actions\Fractions;

use App\Imports\FractionImport;
use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ImportFractions extends Action
{
    public $name = '导入分数';

    protected $selector = '.import-fractions';

    public function handle(Request $request)
    {
        // 获取到上传的文件
        $file = $request->file('file');

        try {
            Excel::import(new FractionImport(), $file);
        } catch (\Exception $e) {
            return $this->response()->error('导入分数信息错误：'.$e->getMessage());
        }

        return $this->response()->topRight()->success('导入分数信息成功')->timeout(1000)->refresh();
    }

    public function form()
    {
        $this->file('file', '请选择文件');
    }

    public function html()
    {
        return <<<HTML
        <a class="btn btn-sm btn-default import-fractions">导入分数</a>
HTML;
    }
}