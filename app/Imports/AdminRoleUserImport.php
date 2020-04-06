<?php

namespace App\Imports;

use App\Models\AdminRoleUsers;
use App\Models\AdminUser;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class AdminRoleUserImport implements ToModel,WithHeadingRow,WithBatchInserts
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $adminUser = AdminUser::where('username', $row['username'])->first();

        return new AdminRoleUsers([
            'role_id'        => $row['role_id'],
            'user_id'        => $adminUser->id,
            'created_at'     => date("Y-m-d H:i:s"),
            'updated_at'     => date("Y-m-d H:i:s"),
        ]);
    }

    /**
     * @return int
     */
    public function batchSize(): int
    {
        return 500;
    }
}
