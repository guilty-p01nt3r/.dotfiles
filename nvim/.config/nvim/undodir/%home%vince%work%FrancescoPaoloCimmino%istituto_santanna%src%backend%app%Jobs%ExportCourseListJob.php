Vim�UnDo� �<;_��qw.��v��
{n#���KE	�FE.>�   �                                   eI�    _�                     `   *    ����                                                                                                                                                                                                                                                                                                                                                             eH�    �   `   b   �                  �   a   b   �    �   `   b   �    5��    `                      =
                     �    `                      =
                     �    `                    M
                    5�_�                    b       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   a   c   �                      ->get();5��    a                     Z
                    �    a                     i
                     �    a                     h
                     �    a                     g
                     �    a                     f
                     �    a                     e
                     �    a   
                  d
                     �    a   	                  c
                     �    a                     b
                     �    a                     a
                     �    a                     `
                     �    a                     _
                     �    a                     ^
                     �    a                     ]
                     �    a                     \
                     �    a                     [
                     �    a                      Z
                     5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   `   b   �                      ->distinct()5��    `                     Y
                     �    `                    Y
                    5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   b   d   �                  $st�   c   d   �    �   a   d   �                  �   a   c   �    5��    a                      [
                     �    a                      [
                     �    a                      [
                     �    a                      [
                     �    b                   )   \
              )       5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   c   e   �                  Cour�      	   �      use App\Models\Courses\Course;   use App\Models\ExportRequest;�   b   d   �                  CourseSemester�   a   d   �                  �   a   c   �    5��    a                      [
                     �    a                      [
                     �    a                      [
                     �    a                      [
                     �    b                      \
                     �    b                 	   h
             	       �    b                     p
                     �    b                     o
                     �    b                     n
                     �    b                     m
                     �    b                     l
                     �    b                     k
                     �    b                     j
                     �    b                     i
                     �    b                    h
                    �    b                    h
                    �                        ;                      �    c                    �
                    5�_�      	             d       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   c   d                      CourseSemester:5��    c                      {
                     5�_�      
           	   d        ����                                                                                                                                                                                                                                                                                                                                                             eI �    �   c   d           5��    c                      {
                     5�_�   	              
   b        ����                                                                                                                                                                                                                                                                                                                                                             eI �    �   c   e   �                  Course::getSql�   d   e   �    �   b   e   �                  �   b   d   �    5��    b                      z
                     �    b                      z
                     �    b                      z
                     �    b                      z
                     �    c                      {
                     �    c                     �
                     �    c                     �
                     �    c                    �
                    �    c                    �
                    �    c                    �
                    5�_�   
                 d       ����                                                                                                                                                                                                                                                                                                                                                             eI �    �   c   e   �      &            Course::getSql($students);5��    c                     �
                     5�_�                    c        ����                                                                                                                                                                                                                                                                                                                            f          c           V       eI>     �   b   c              +            echo Course::getSql($students);       )            $students = $students->get();5��    b                      z
      X               5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            c          c           V       eI?     �   b   d   �                      �   c   d   �    �   a   d   �                      ->distinct();5��    a                     x
                     �    a                     \
                    �    a                     t
                     �    b                      u
                     �    b                    �
                    5�_�                    c       ����                                                                                                                                                                                                                                                                                                                            d          d           V       eIC    �   `   c   �      +                ->orderBy("pi.name", "asc")               ->distinct()�   �   �   �      1            $writer->writeSheetHeader("Generale",�   �   �   �      :            $writer->writeSheetHeader("Generale", $header,�   �   �   �      A            $writer->writeSheetHeader("Generale", $header, false,�   �   �   �      m            $writer->writeSheetHeader("Generale", $header, false, ["font-size" => 14, "font-style" => "bold"]5��    �   A                �                    �    �   :                �                    �    �   1                �                    �    �   &                 �                     �    `   +               [
                    5�_�                             ����                                                                                                                                                                                                                                                                                                                            d          d           V       eI�     �               �   <?php       namespace App\Jobs;           use App\Models\Courses\Course;   use App\Models\CourseSemester;   use App\Models\ExportRequest;   use App\Models\Student;   (use App\Services\Parser\xlsx\XLSXWriter;   use Illuminate\Bus\Queueable;   +use Illuminate\Contracts\Queue\ShouldQueue;   +use Illuminate\Foundation\Bus\Dispatchable;   (use Illuminate\Queue\InteractsWithQueue;   &use Illuminate\Queue\SerializesModels;       0class ExportCourseListJob implements ShouldQueue   {   F    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;           /**        * @var int        */       protected $courseId;           /**        * @var int        */       protected $semesterId;           /**        * @var string        */       protected $filename;           /**        * @var int        */       protected $userId;           /**   '     * ExportCourseListJob constructor.        *        * @param int $courseId        * @param int $semesterId        * @param string $filename        * @param int $userId        */   ^    public function __construct(int $courseId, int $semesterId, string $filename, int $userId)       {   $        $this->courseId = $courseId;   (        $this->semesterId = $semesterId;   $        $this->filename = $filename;            $this->userId = $userId;       }           /**        * Execute the job.        */   "    public function handle(): void       {   7        $exportRequestID = ExportRequest::insertGetId([   '            "user_id" => $this->userId,   &            "entity" => "course_list",   %            "status" => "processing",   /            "startDate" => new \DateTime("now")           ]);               try {               /**   '             * GENERATION FILE :: START                */                   // Generate excel               $out = [];               // Headers               $header = [                    "#" => "string",   #                "Name" => "string",   &                "Surname" => "string",   #                "Email" => "string"               ];               // Query   (            $students = Student::select(   $                "students.id AS id",   "                "pi.name AS name",   (                "pi.surname AS surname",   )                "students.email AS email"               )   U                ->join("application_form AS af", "af.student_id", "=", "students.id")   h                ->leftJoin("personal_information AS pi", "af.student_id", "=", "pi.application_form_id")   ^                ->join("course_semester_student AS css", "css.student_id", "=", "students.id")   W                ->join("course_semester AS cs", "cs.id", "=", "css.course_semester_id")   8                ->where("cs.course_id", $this->courseId)   <                ->where("cs.semester_id", $this->semesterId)   .                ->orderBy("pi.surname", "asc")   +                ->orderBy("pi.name", "asc")                   ->distinct()                   ->get();           *            if ($students->count() == 0) {   <                ExportRequest::where("id", $exportRequestID)                       ->update([   )                        "filename" => "",   &                        "errors" => 0,   0                        "status" => "completed",   9                        "endDate" => new \DateTime("now")                       ]);                   return;               }       7            foreach ($students as $index => $student) {                   $out[] = [                       $index + 1,   #                    $student->name,   &                    $student->surname,   #                    $student->email                   ];               }   -            // Check folder export is created   7            if (!file_exists(storage_path("export"))) {   :                mkdir(storage_path("export"), 0777, true);               }                // Path to save file   ?            $filePath = storage_path("export/$this->filename");               // Write file   '            $writer = new XLSXWriter();   &            $writer->writeSheetHeader(                   "Generale",                   $header,                   false,   ;                ["font-size" => 14, "font-style" => "bold"]               );   +            // Write the rows into the file                $nOut = count($out);   ,            for ($i = 0; $i < $nOut; $i++) {   =                $writer->writeSheetRow("Generale", $out[$i]);               }               // Write the file   ,            $writer->writeToFile($filePath);                   /**   %             * GENERATION FILE :: END                */       8            ExportRequest::where("id", $exportRequestID)                   ->update([   2                    "filename" => $this->filename,   "                    "errors" => 0,   ,                    "status" => "completed",   5                    "endDate" => new \DateTime("now")                   ]);   "        } catch (\Exception $ex) {   D            \Log::error(__METHOD__ . " " . $ex->getTraceAsString());       8            ExportRequest::where("id", $exportRequestID)                   ->update([   "                    "errors" => 1,   2                    "status" => "end_with_errors",   5                    "endDate" => new \DateTime("now")                   ]);   	        }       }   }5�5�_�                   d       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   c   e   �                  CourseSemester:5��    c                    �
                    5�_�                     d       ����                                                                                                                                                                                                                                                                                                                                                             eI �     �   c   e   �                   CourseSemester::getS5��    c                     {
                    �    c                     �
                     �    c                     �
                     �    c                     �
                     �    c                     �
                     �    c                     �
                     �    c                    �
                    �    c                    �
                    �    c                    �
                    5��