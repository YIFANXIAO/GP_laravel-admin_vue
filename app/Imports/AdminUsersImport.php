<?php

namespace App\Imports;

use App\Models\AdminUser;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class AdminUsersImport implements ToModel,WithHeadingRow,WithBatchInserts
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new AdminUser([
            'username'       => $row['username'],
            'password'       => Hash::make($row['password']),
            'name'           => $row['name'],
            'avatar'         => $row['avatar'],
            'remember_token' => $row['remember_token'] ?? null,
            'created_at'     => date("Y-m-d H:i:s"),
            'updated_at'     => date("Y-m-d H:i:s"),
        ]);
    }

    public function batchSize(): int
    {
        return 500;
    }
}
