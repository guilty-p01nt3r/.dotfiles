Vim�UnDo� 
��_I�c`���ê2�2Gp<��2|����1   !   ,            "providers" => "nullable|array",                              dv#�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d^%H    �                           �             �             5��                          %                     �                       P   %              P       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d^%Q    �               P            "email" => "nullable|sometimes|string|email|unique:providers,email",�             5��               P       +   %      P       +       5�_�                       E    ����                                                                                                                                                                                                                                                                                                                                                             d^%Y    �               E            "name" => "required|string|max:255|unique:providers,name"5��       E                  $                     5�_�                       D    ����                                                                                                                                                                                                                                                                                                                                                             d^%\     �               F            "name" => "required|string|max:255|unique:providers,name",5��       D                  #                     �       E                  $                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d^%b    �                   public function rules()�             5��                        �                    5�_�                      &    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    d^%�    �               +    public function rules($resource_id = 0)5��       &                  �                     5�_�      	                 $    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    d^%�    �               +            "referent" => "nullable|array",5��       $                 W                    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    d^&Y    �                ,            "referent" => "nullable|string",5��                          3      -               5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    d^';   	 �               )class ProviderRequest extends FormRequest5��                         b                      5�_�   
                   F    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    d^'E    �               G            "name" => "required|string|max:255|unique:providers,name,",�             5��       F                 7                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dbK     �      %       �             5��                          Y              �       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dbK     �         %    5��                          Y                     �                          Y                     �                          Y                     5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                                             dbM    �   %   '   &    5��    %                      >                     �    %                      >                     �    %                      >                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             db>h    �                    public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }    5��                          Z      �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dv#~     �                            �             5��                          H                     �                          H                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       dv#�     �             �             �                            "5��                          H                     �                          H              h       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       dv#�    �                :            "providers.*" => "integer|exists:providers,id"�         !      ,            "providers" => "nullable|array",5��              	       	   U      	       	       �              	       	   �      	       	       �       -       	       	   �      	       	       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dbG     �             �            �       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }       public function messages()       {           return [   H            "name.required" => "Il nome del fornitore è obbligatorio.",   S            "name.unique" => "Il nome del fornitore è già presente nel database."   
        ];       }5��                   �       .               (      5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    d^'@   
 �                   public function rules()5��                         �                     5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                             d^%�    �               .    public function rules($resource_id = null)5��       )                 �                    5��