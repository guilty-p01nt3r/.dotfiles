Vim�UnDo� &둼��Z����=Q��H�%�&g�]ؽ�	�      >        Schema::table('service', function (Blueprint $table) {                             d���    _�                            ����                                                                                                                                                                                                                                                                                                                                                             d��F     �                           //5��                         ;                    �                          ;                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��`     �                �             5��                          ;                     �                     F   G             F       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d��f    �                           //�             5��                         6                    �                         E                     �                         D                     �                         C                     �                         B                     �                        B              y       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d���     �                  <?php       -use Illuminate\Database\Migrations\Migration;   )use Illuminate\Database\Schema\Blueprint;   &use Illuminate\Support\Facades\Schema;       "return new class extends Migration   {       /**        * Run the migrations.        */       public function up(): void       {   >        Schema::table('service', function (Blueprint $table) {   R            $table->string('quotation_file', 255)->nullable()->after('quotation');           });       }           /**        * Reverse the migrations.        */        public function down(): void       {   >        Schema::table('service', function (Blueprint $table) {   A            if (Schema::hasColumn('service', 'quotation_file')) {   5                $table->dropColumn('quotation_file');               }           });       }   };5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d���     �               >        Schema::table('service', function (Blueprint $table) {5��                                              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d���    �               >        Schema::table('service', function (Blueprint $table) {5��                                              5��