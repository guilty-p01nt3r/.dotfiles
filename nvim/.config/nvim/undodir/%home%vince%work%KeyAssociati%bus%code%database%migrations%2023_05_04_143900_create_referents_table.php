Vim�UnDo� S�^*�<�\��2DsG2��2h2��ͳ   !           *                       dc�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             d\,     �             �             5��                          �              J       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d\,     �                I            $table->string("name", 512)->unique();    // Name and Surname5��                        �                    5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             d\,     �                I            $table->string("name", 512)->unique();    // Name and Surname5��       6                  �                     5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             d\,    �                6            $table->string("name", 512)->unique();    �                L            $table->string("surname", 512)->unique();    // Name and Surname5��       5                  �                     �       2                  �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             d\,3     �                2            $table->string("name", 512)->unique();5��       '                                       5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             d\,5     �                '            $table->string("name", 512)5��       '                                       5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                             d\,6     �                5            $table->string("surname", 512)->unique();5��       *                  �                     5�_�      	                 *    ����                                                                                                                                                                                                                                                                                                                                                             d\,7     �                *            $table->string("surname", 512)5��       *                  �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             d\,8    �         "                  $table->uni�         "    �         !                      �              5��                          X                     �                          X                     �                          X                     �                          X                     �                          Y                     �                        e                    �                        k                    5�_�   	              
      -    ����                                                                                                                                                                                                                                                                                                                                                             dbAg    �         "      0            $table->unique(["name", "surname"]);�         "    5��       -                 �                    5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             dbAz     �         "      9            $table->unique(["name", "surname", "email"]);5��                        t                    �                         u                     �                        t                    �                         t                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dbA~     �                            $table->unique();5��                          Y                     5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                             dbA    �         !      0            $table->string("email")->nullable();�         !    5��       /                 �                    5�_�                       #    ����                                                                                                                                                                                                                                                                                                                               .          #       v   #    dbA�    �         !      :            $table->string("email")->nullable()->unique();5��       #                  �                     5�_�                      '    ����                                                                                                                                                                                                                                                                                                                               .          #       v   #    dbA�     �         !      (            $table->string("name", 512);5��       '                                       �       )                 �                    �       )              
   �             
       5�_�                       *    ����                                                                                                                                                                                                                                                                                                                               .          #       v   #    dbA�    �         !      +            $table->string("surname", 512);5��       *               
   �              
       �       ,              
   �             
       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             dc�     �               !   <?php       -use Illuminate\Database\Migrations\Migration;   )use Illuminate\Database\Schema\Blueprint;   &use Illuminate\Support\Facades\Schema;       "return new class extends Migration   {       /**        * Run the migrations.        */       public function up(): void       {   A        Schema::create('referents', function (Blueprint $table) {               $table->id();   4            $table->string("name", 512)->nullable();   7            $table->string("surname", 512)->nullable();   .            $table->string("email")->unique();   4            $table->string("phone", 11)->nullable();   "            $table->softDeletes();   !            $table->timestamps();               });       }           /**        * Reverse the migrations.        */        public function down(): void       {   *        Schema::dropIfExists('referents');       }   };5�5�_�                      #    ����                                                                                                                                                                                                                                                                                                                               N          C       v   #    dbA�     �         !      N            $table->string("surname", 512); $table->string("email")->unique();5��       +                �                    5�_�                        +    ����                                                                                                                                                                                                                                                                                                                               N          C       v   #    dbA�     �                0            $table->string("email")->nullable();5��               4       0   �      4       0       5��