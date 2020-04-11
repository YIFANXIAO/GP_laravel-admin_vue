<?php

namespace App\Imports;

use App\Models\AdminUser;
use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Events\BeforeImport;
use Maatwebsite\Excel\Validators\ValidationException;

class AdminUsersImport implements ToModel,WithHeadingRow,WithBatchInserts,WithEvents, WithValidation, WithMultipleSheets
{

    use Importable, RegistersEventListeners;

    public static function beforeImport(BeforeImport $event)
    {
        $worksheet = $event->reader->getActiveSheet();
        $highestRow = $worksheet->getHighestRow(); // e.g. 10

        if ($highestRow < 2) {
            $error = \Illuminate\Validation\ValidationException::withMessages([]);
            $failure = new Failure(1, 'rows', [0 => 'Now enough rows!']);
            $failures = [0 => $failure];
            throw new ValidationException($error, $failures);
        }
    }

    /**
     * @param array $row
     *
     * @return Model|null
     * @throws Exception
     */
    public function model(array $row)
    {

        $student = DB::table('admin_users')
            ->where('username', $row['username'])
            ->first();

        if ($student != null) {
            throw new Exception('参数username:'.$row['username'].'重复，请修改后导入');
        }

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

    public function sheets(): array
    {
        return [
            // Select by sheet index
            0 => new AdminUsersImport(),
        ];
    }

    public function rules(): array
    {
        return [];
    }
}
