<?php

namespace App\Imports;

use App\Models\AdminUser;
use App\Models\Squad;
use App\Models\StudentSquad;
use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
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

class StudentSquadImport implements ToModel,WithHeadingRow,WithBatchInserts,WithEvents, WithValidation, WithMultipleSheets
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

        $adminUser = AdminUser::where('username', $row['username'])->first();

        $studentSquad = DB::table('student_squad')
            ->where('student_id', $adminUser->id)
            ->first();

        if ($studentSquad != null) {
            throw new Exception('用户名为username:'.$row['username'].'的用户已分配班级，请修改后导入');
        }

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

    public function sheets(): array
    {
        return [
            // Select by sheet index
            0 => new StudentSquadImport(),
        ];
    }

    public function rules(): array
    {
        return [];
    }
}
