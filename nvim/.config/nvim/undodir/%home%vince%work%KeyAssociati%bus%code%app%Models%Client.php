Vim�UnDo� *),�'(�P��A���b2��W@p�<C9�[                                     dc��    _�                     	       ����                                                                                                                                                                                                                                                                                                                                                             d\��    �      
         class Client extends Model�   	   
       5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d\��    �                   �             5��                                               �                                               �                                               �                                               �                                               �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d\��     �                 5��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d\��    �                 5��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d\��    �                'use Illuminate\Database\Eloquent\Model;5��                          U       (               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d\��    �      	         class Client extends ApiModel5��                        �                     �                        �                     �                        �                     5�_�      	                    ����                                                                                                                                                                                                                                                                                                                                                             d\̢     �                   �             5��                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                         �                     �                         �                     �                         �                     �                          �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             d\̦     �      "             �             �             5��                          �                     �                       	   �              	       �       	                 �              w       5�_�   	              
   !       ����                                                                                                                                                                                                                                                                                                                                                             d\̪     �   !   $   %          �   !   #   $    5��    !                      ^                     �    !                      ^                     �    !                      ^                     �    !                      ^                     �    "                      _                     �    "                      _                     5�_�   
                         ����                                                                                                                                                                                                                                                                                                                            #                      V       d\̬    �             	           protected $sortable = [   	        [   (            "field" => "displayed_name",                "direction" => "asc"   	        ]       ];        5��           	               �      �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       d\̭    �                 5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             dc��     �                  <?php       namespace App\Models;       6use Illuminate\Database\Eloquent\Factories\HasFactory;   -use Illuminate\Database\Eloquent\SoftDeletes;       class Client extends ApiModel   {       use HasFactory;       use SoftDeletes;           protected $fillable = [           "displayed_name",           "business_name",           "vat_number",           "fiscal_code",           "address",           "zip_code",           "city",           "province",           "email",           "phone",           "sdi",           "note"       ];       }5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d\̝     �                   �                   use5��                          �                      �                          �                      5��