Vim�UnDo� ?���Ӗ�+n>6B�#��Ƒ�y��\�ge8L   *   M            'email' => 'nullable|email|unique:clients,email,' . $resource_id,   #   !      )       )   )   )    dbB)    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �                \        // @TODO: capire come comportarsi con la unique dell'email quando siamo in UPDATE!!!5��                          �      ]               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d[P�    �                 5��                          �                     5�_�                    #   B    ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   "   $   )      D            "email" => "nullable|string|email|unique:clients,email",5��    "   B                 �                    �    "   B                  �                     5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             d[P�    �   "   $   )      B            "email" => "nullable|string|email|unique:clients,email�   #   $   )    5��    "          +       /   �      +       /       5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   "   $   )      F            "email" => Rule::unique('clients')->ignore($this->client),5��    "                     �                     5�_�                    #   F    ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   "   $   )      G            "email" => [Rule::unique('clients')->ignore($this->client),5��    "   F                  �                     5�_�                    #   F    ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   "   %   )      H            "email" => [Rule::unique('clients')->ignore($this->client)],5��    "   F                  �                     �    #                      �                     5�_�      	              #       ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   "   %   *      F            "email" => [Rule::unique('clients')->ignore($this->client)5��    "                     �                     �    #                      �                     5�_�      
           	   #       ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   #   %   +    5��    #                      �                     �    #                      �                     �    #                      �                     5�_�   	              
   %       ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   %   '   -      =                Rul::unique('clients')->ignore($this->client)�      	   ,      +use Illuminate\Foundation\Http\FormRequest;       'class ClientRequest extends FormRequest�   $   &   ,      >                Rule::unique('clients')->ignore($this->client)5��    $                    �                    �    $                    �                    �       +                 X              "       �    %                    �                    5�_�   
                 %        ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   $   &   -       �   %   &   -    5��    $                      �                     �    $                    �                    5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                                             d[P�     �   %   '   .                      �   &   '   .    �   %   '   -    5��    %                      �                     �    %                      �                     5�_�                    &       ����                                                                                                                                                                                                                                                                                                                                                             d[P�    �   %   '   .                      Rule::email(),5��    %                    �                    �    %                    �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d[QE    �      	   .      'class ClientRequest extends FormRequest5��                         �                      5�_�                   %        ����                                                                                                                                                                                                                                                                                                                            $          (          V       d[Q     �   #   %   *                  "email" => [�   $   %   *    �   $   %          !                Rule::nullable(),                   Rule::email(),   >                Rule::unique('clients')->ignore($this->client)               ],5��    $                      �      �               �    #                  R   �             R       5�_�                    $   Q    ����                                                                                                                                                                                                                                                                                                                            $          %          V       d[Q�    �   "   %   *      ,            "province" => "nullable|string",   T                  'email' => 'required|email|unique:users,email,' . $this->user->id,�   #   %   *      R                  'email' => 'required|email|unique:users,email,'.$this->user->id,5��    #   B                  �                     �    #   A                  �                     �    "   ,               �                    5�_�                    $   .    ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[Q�    �   #   %   *      N            'email' => 'required|email|unique:users,email,' . $this->user->id,5��    #   .                 �                    5�_�                    $   G    ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[Q�    �   #   %   *      P            'email' => 'required|email|unique:clients,email,' . $this->user->id,5��    #   G       	          �      	              5�_�                    $   I    ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[Q�    �   #   %   *      I            'email' => 'required|email|unique:clients,email,' . $this->id5��    #   I                  �                     �    #   I                 �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[R	   	 �         +              �         +    �         *    5��                          �                     �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                            $          &          V       d[RC     �         +          public function rules()5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                            $          &          V       d[RH     �                        \Log::debug($this->id);5��                          �                      5�_�                    $   @    ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[RJ   
 �   #   %   *      J            'email' => 'required|email|unique:clients,email,' . $this->id,�   $   %   *    5��    #   @       
          �      
              �    #   A                 �                    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[S     �   #   %   *      M            'email' => 'required|email|unique:clients,email,' . $resource_id,5��    #                     �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[S    �   #   %   *      E            'email' => '|email|unique:clients,email,' . $resource_id,5��    #                     �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            #          %          V       d[S;    �   #   %   *      D            'email' => 'email|unique:clients,email,' . $resource_id,5��    #                  	   �              	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d]��    �         *    �         *    5��                                        <       5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             d]�"    �         +      ;            "id" => "required|integer|exists:referents,id",5��       -       	          :      	              5�_�      !                  -    ����                                                                                                                                                                                                                                                                                                                                                             d]�+    �                9            "id" => "required|integer|exists:clients,id",5��                                :               5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             d]�/    �                use Illuminate\Validation\Rule;5��                          Y                       5�_�   !   #           "   (        ����                                                                                                                                                                                                                                                                                                                                                             db     �   (   0   )    �   (   )   )    5��    (                      p              �       5�_�   "   %           #   )       ����                                                                                                                                                                                                                                                                                                                                                             db    �   (   *   0    5��    (                      p                     �    (                      p                     �    (                     q                     �    (                      p                     5�_�   #   &   $       %   -       ����                                                                                                                                                                                                                                                                                                                                                             db    �   ,   .   2                  �   -   .   2    �   ,   .   1    5��    ,                      �                     �    ,                      �                     �    ,                    �                    �    ,                    �                    �    ,                    �                    �    ,                 C   �             C       5�_�   %   (           &   *        ����                                                                                                                                                                                                                                                                                                                                                             db>q    �   )   *              public function messages()       {           return [   P            "business_name.required" => "Il nome dell'azienda è obbligatorio.",   O            "email.unique" => "L'email inserita è già presente nel database."   
        ];       }    5��    )                      q      �               5�_�   &   )   '       (   #   !    ����                                                                                                                                                                                                                                                                                                                                                             dbB&     �   "   $   *      M            'email' => 'nullable|email|unique:clients,email,' . $resource_id,5��    "   !                  �                     �    "   !                 �                    5�_�   (               )   #   !    ����                                                                                                                                                                                                                                                                                                                                                             dbB(    �   "   $   *      N            'email' => 'nullable||email|unique:clients,email,' . $resource_id,5��    "   !               	   �              	       5�_�   &           (   '   #   !    ����                                                                                                                                                                                                                                                                                                                                                             dbB     �   "   $   *      [            'email' => 'nullable|sometimesemailemail|unique:clients,email,' . $resource_id,5��    "   !               
   �              
       �    "   !       
          �      
              �    "   !              	   �             	       �    "   !       	          �      	              5�_�   #           %   $   -       ����                                                                                                                                                                                                                                                                                                                                                             db     �   -   .   1       5��    -                      �                     �    -                      �                     �    -                      �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d]��    �              5��                                <               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d]��     �         *    �         *      ;            "id" => "required|integer|exists:referents,id",5��                          �              <       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d[QH     �      	   .      class UpdateClientRequest e   xtends FormRequest5��                         �                      5��