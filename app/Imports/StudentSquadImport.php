<?php

namespace App\Imports;

use App\Models\AdminUser;
use App\Models\Squad;
use App\Models\StudentSquad;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class StudentSquadImport implements ToModel,WithHeadingRow,WithBatchInserts
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {

        $adminUser = AdminUser::where('username', $row['username'])->first();

        return new StudentSquad([
            'student_id'     => $adminUser->id,
            'squad_id'       => $row['squad_id'],
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
