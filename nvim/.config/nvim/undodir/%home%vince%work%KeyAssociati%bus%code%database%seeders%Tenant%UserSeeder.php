Vim�UnDo� H.d�m�0_��[�܍�?~6�<��N�ޒ�n�8�   /   5            'password' => Hash::make('0kA87!%kXEti'),   )   )                       d��n    _�                        &    ����                                                                                                                                                                                                                                                                                                                                                    v   1    do�     �               %   <?php       "namespace Database\Seeders\Tenant;           use App\Models\User;   use Illuminate\Database\Seeder;   	use Hash;       class UserSeeder extends Seeder   {       /**        * Run the database seeds.        *        * @return void        */       public function run()       {           User::insert([               'id' => 1,   *            'username' => 'vince.simeone',   8            'email' => 'vincenzo.simeone@upnovation.it',   5            'password' => Hash::make('0kA87!%kXEti'),   )            'email_verified_at' => now(),   !            'created_at' => now()           ]);               User::insert([               'id' => 2,   '            'username' => 'fp.cimmino',   9            'email' => 'francesco.cimmino@upnovation.it',   5            'password' => Hash::make('0kA87!%kXEti'),   )            'email_verified_at' => now(),   !            'created_at' => now()           ]);       }   }5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                    v   1    d�|+     �         %      5            'password' => Hash::make('0kA87!%kXEti'),5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                    v   1    d�|3     �                	use Hash;5��                          a       
               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                    v   1    d�|7    �         %      5            'password' => Hash::make('0kA87!%kXEti'),�         $      use Illuminate\Database\Seeder;       class UserSeeder extends Seeder�         $      5            'password' => Hash::make('0kA87!%kXEti'),5��                        �                    �                        �                    �                        �                    �                        `              '       �                        �                    5�_�                   $       ����                                                                                                                                                                                                                                                                                                                                                  V        d��K     �   #   '   &              �   #   %   %    5��    #                      R                     �    #                      R                     �    #                      R                     �    #                      R                     �    $                      S                     �    $                      S                     �    $                      S                     �    %                      T                     �    %                      T                     5�_�      	              %        ����                                                                                                                                                                                                                                                                                                                                                  V        d��M     �   %   .   (    �   %   &   (    5��    %                      T                     5�_�      
           	   %        ����                                                                                                                                                                                                                                                                                                                                                  V        d��N     �   $   %           5��    $                      S                     5�_�   	              
   &       ����                                                                                                                                                                                                                                                                                                                                                  V        d��P     �   %   '   /                  'id' => 1,5��    %                    ~                    5�_�   
                 &       ����                                                                                                                                                                                                                                                                                                                                                  V        d��P     �   %   '   /                  'id' => 2,5��    %                    ~                    5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                  V        d��R     �   &   (   /      *            'username' => 'vince.simeone',5��    &                    �                    5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                  V        d��T    �   '   )   /      8            'email' => 'vincenzo.simeone@upnovation.it',5��    '                    �                    �    '   !                 �                    5�_�                     )   )    ����                                                                                                                                                                                                                                                                                                                            )   *       )   )       v   )    d��m    �   (   *   /      5            'password' => Hash::make('0kA87!%kXEti'),5��    (   )                 �                    5�_�                   $       ����                                                                                                                                                                                                                                                                                                                                                  V        d��I     �   $   %   %       5��    $                      X                     �    $                      X                     �    $                      X                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        d��G     �         %       5��                          K                     �                          K                     �                          K                     5��