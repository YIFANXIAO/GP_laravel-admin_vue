<?php

namespace App\Imports;

use App\Models\Fraction;
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

class FractionImport implements ToModel,WithHeadingRow,WithBatchInserts,WithEvents, WithValidation, WithMultipleSheets
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
        // 验证传入的username对应是否存在用户，如果存在用户，对应角色是否是学生
        // 验证传入的course_name对应的课程是否存在，并且该学生是否通过班级，选修了该课程
        // 通过传入的meta_cal_type_name验证是否存在对应的分数类型，并且该课程对应的计算公式是否包含该类型

        $student = DB::table('admin_users')
            ->where('username', $row['username'])
            ->whereIn('id', function ($query) {
                $query->select('user_id');
                $query->from('admin_role_users');
                $query->whereIn('role_id', function ($query) {
                    $query->select('id');
                    $query->from('admin_roles');
                    $query->where('slug', config('admin.database.role_student'));
                });
            })
            ->whereIn('id', function ($query) use ($row) {
                $query->select('student_id');
                $query->from('student_squad');
                $query->whereIn('squad_id', function ($query) use ($row) {
                    $query->select('squad_id');
                    $query->from('squads_courses');
                    $query->whereIn('course_id', function ($query) use ($row) {
                        $query->select('id');
                        $query->from('courses');
                        $query->where('full_name', $row['course_name']);
                    });
                });
            })
            ->first();

        if ($student == null) {
            throw new Exception('传入的usename或courseId不正确，无法导入');
        }

        $metaCalType = DB::table('meta_cal_type')
            ->where('name', $row['meta_cal_type_name'])
            ->whereIn('id', function ($query) use ($row) {
                $query->select('cal_type_id');
                $query->from('meta_cal');
                $query->whereIn('formula_id', function ($query) use ($row) {
                    $query->select('id');
                    $query->from('formula_left');
                    $query->whereIn('course_id', function ($query) use ($row) {
                        $query->select('id');
                        $query->from('courses');
                        $query->where('full_name', $row['course_name']);
                    });
                });
            })
            ->first();

        if ($metaCalType == null) {
            throw new Exception('传入的meta_cal_type_name参数有误，无法导入');
        }

        $course = DB::table('courses')
            ->where('full_name', $row['course_name'])
            ->first();


        // 验证order，是否已经对在对应数据，并且order的数值在合适范围内

        // 验证frantion的数值是否在合适范围内

        $fractions = DB::table('fraction')
            ->where('student_id', $student->id)
            ->where('course_id', $course->id)
            ->where('cal_type_id', $metaCalType->id)
            ->orderBy('order', 'desc')
            ->first();

        // 判断order的赋值是否合法，以此判定能否提交
        $metaCal = DB::table('meta_cal')
            ->select(DB::raw('number'))
            ->where('cal_type_id', $metaCalType->id)
            ->whereIn('formula_id', function ($query) use ($course) {
                $query->select('id');
                $query->from('formula_left');
                $query->where('course_id', $course->id);
                $query->where('pid', 0);
            })
            ->first();

        // 对查出来的两个参数进行判空
        if ($metaCal == null) {
            throw new Exception('对应公式设置有误有误，请检查后再导入');
        }else if (($fractions != null && $row['order'] <= $fractions->order) || ($fractions != null && $fractions->order >= $metaCal->number)) {
            dump($fractions);
            throw new Exception('参数order设置有误，请检查后再导入');
        }

        return new Fraction([
            'student_id'     => $student->id,
            'course_id'      => $course->id,
            'cal_type_id'    => $metaCalType->id,
            'order'          => $row['order'],
            'fraction'       => $row['fraction'],
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
            0 => new FractionImport(),
        ];
    }

    public function rules(): array
    {
        return [];
    }
}
