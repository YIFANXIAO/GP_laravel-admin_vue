<?php

namespace App\Admin\Controllers;

use Encore\Admin\Auth\Database\OperationLog;
use Encore\Admin\Controllers\LogController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AdminOperationlogController extends LogController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '操作日志';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = parent::grid();
        return $grid;
    }

    public function destroy($id)
    {
        $ids = explode(',', $id);
        if (OperationLog::destroy(array_filter($ids))) {
            $data = [
                'status'  => true,
                'message' => trans('admin.delete_succeeded'),
            ];
        } else {
            $data = [
                'status'  => false,
                'message' => trans('admin.delete_failed'),
            ];
        }
        return response()->json($data);
    }
}
