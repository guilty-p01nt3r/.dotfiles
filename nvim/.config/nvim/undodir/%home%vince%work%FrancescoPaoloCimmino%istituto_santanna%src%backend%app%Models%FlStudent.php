Vim�UnDo� ��+�
}'�S�5��ծ�dL`Ϊ8K��   7   A        return ($facultyLed->active && $facultyLed->date_end >= ;   5   ?      /       /   /   /    d�1    _�                             ����                                                                                                                                                                                                                                                                                                                                                             dJ�    �                4        return $this->belongsTo(FacultyLead::class);�               !    public function facultyLead()5��                        s                    �       (                 �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dMR�    �         !              �         !    �                        �             5��                          O                     �                          O                     �                          O                     �                          O                     �                          P                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dQ��    �   !   &   #          �   "   #   #    �       #   "          �       "   !    5��                           )                     �                           )                     �                           )                     �                           )                     �    !                      *                     �    !                    .              �       5�_�                    $   A    ����                                                                                                                                                                                                                                                                                                                                                             dQ�    �   #   %   &      l        return $this->belongsToMany(Activity::class, 'activity_fl_student', 'fl_student_id', 'activity_id');5��    #   A                  �                     5�_�      	             $   N    ����                                                                                                                                                                                                                                                                                                                                                             dQ�*   
 �   #   %   &      k        return $this->belongsToMany(Activity::class, 'activity_flstudent', 'fl_student_id', 'activity_id');5��    #   N                  �                     5�_�      
          	   %       ����                                                                                                                                                                                                                                                                                                                                                             dV��    �   &   +   (          public function message�   '   (   (    �   %   (   '          �   %   '   &    5��    %                      �                     �    %                      �                     �    %                      �                     �    %                      �                     �    &                      �                     �    &                    �              y       5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             dW��     �         ,              �         +    5��                          O                     �                       
   O              
       �       	                  X                     �                        W                    5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             dW��    �         ,              "messages_token"5��                         g                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d���    �         -              �         -    �         ,    5��                          i                     �                          i                     5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             d��     �   -   2   /          �   .   /   /    �   ,   /   .          �   ,   .   -    5��    ,                      �                     �    ,                      �                     �    ,                      �                     �    ,                      �                     �    -                      �                     �    -                    �              g       5�_�                   0   "    ����                                                                                                                                                                                                                                                                                                                                                             d��     �   /   1   2      7        return $this->facultyLed->semester->isActive();5��    /   "                 �                    5�_�                    0   "    ����                                                                                                                                                                                                                                                                                                                                                             d��     �   /   1   2      &        return $this->facultyLed->facu5��    /   "                  �                     5�_�                    0   "    ����                                                                                                                                                                                                                                                                                                                                                             d��    �   /   1   2      "        return $this->facultyLed->5��    /   "                  �                     5�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             d��     �   /   1   2      )        return $this->facultyLed->active;5��    /                     �                     �    /                    �                    5�_�                    0   )    ����                                                                                                                                                                                                                                                                                                                                                             d��    �   /   1   2      2        return optional($this->facultyLed->active;5��    /   )                  �                     5�_�                   /       ����                                                                                                                                                                                                                                                                                                                                                             d�    �   /   1   3              �   0   1   3    �   /   1   2    5��    /                      �                     �    /                   (   �              (       5�_�                    0   '    ����                                                                                                                                                                                                                                                                                                                                                             d�     �   0   2   4              �   1   2   4    �   0   2   3    5��    0                      �                     �    0                   !   �              !       5�_�                    1       ����                                                                                                                                                                                                                                                                                                                                                             d�     �   0   2   4      !        if(is_null) return false;5��    0                     �                     5�_�                    1       ����                                                                                                                                                                                                                                                                                                                                                             d�     �   0   2   4      "        if(is_null) {return false;5��    0                     �                     �    0                    �                    �    0                    �                    �    0                    �                    5�_�                    1       ����                                                                                                                                                                                                                                                                                                                                                             d�"     �   0   2   4      .        if(is_null($facultyLed) {return false;�   1   2   4    5��    0          #          �      #              5�_�                    1       ����                                                                                                                                                                                                                                                                                                                                                             d�%     �   0   2   4      &        if(!$facultyLed) return false;5��    0                     �                     5�_�                    1   &    ����                                                                                                                                                                                                                                                                                                                                                             d�&     �   0   2   4      '        if(!$facultyLed) {return false;5��    0   &                                       5�_�                    1   &    ����                                                                                                                                                                                                                                                                                                                                                             d�'     �   0   2   4      (        if(!$facultyLed) {return false{;5��    0   &                                     5�_�                     1       ����                                                                                                                                                                                                                                                                                                                                                             d�(    �   0   3   4      (        if(!$facultyLed) {return false};5��    0                     �                     �    1                      �                     5�_�      !               2       ����                                                                                                                                                                                                                                                                                                                                                             d�+     �   1   4   5                  return false};5��    1                                          �    2                                           5�_�       "           !   2       ����                                                                                                                                                                                                                                                                                                                                                             d�-     �   1   3   6                  return false5��    1                                          5�_�   !   #           "   3   	    ����                                                                                                                                                                                                                                                                                                                                                             d�.    �   2   4   6      
        };5��    2   	                                       5�_�   "   $           #   4       ����                                                                                                                                                                                                                                                                                                                            4          4          v       d�2     �   3   5   6      3        return optional($this->facultyLed)->active;5��    3          	           +      	               5�_�   #   %           $   4        ����                                                                                                                                                                                                                                                                                                                            4          4          v       d�3    �   3   5   6      *        return $this->facultyLed)->active;5��    3                      <                     5�_�   $   &           %   4        ����                                                                                                                                                                                                                                                                                                                            4          4          v       d�7    �   0   2   6              if(!$facultyLed) {5��    0   
                  �                     5�_�   %   '           &   4       ����                                                                                                                                                                                                                                                                                                                            4          4          v       d�<    �   3   5   6      )        return $this->facultyLed->active;5��    3                    ,                    �    3                    -                    �    3                    ,                    �    3                    ,                    �    3                    ,                    5�_�   &   (           '   4   "    ����                                                                                                                                                                                                                                                                                                                            4          4          v       d��     �   3   5   6      #        return $facultyLed->active;5��    3   "                  ?                     5�_�   '   )           (   4       ����                                                                                                                                                                                                                                                                                                                            4          4          v       d��     �   3   5   6      &        return $facultyLed->active &&;5��    3                     ,                     5�_�   (   *           )   4   &    ����                                                                                                                                                                                                                                                                                                                            4          4          v       d��     �   3   5   6      '        return ($facultyLed->active &&;5��    3   &                  C                     �    3   +                  H                     �    3   *                  G                     �    3   )                  F                     �    3   (                  E                     �    3   '                 D                    �    3   '                 D                    �    3   '                 D                    5�_�   )   +           *   4   4    ����                                                                                                                                                                                                                                                                                                                            4          4          v       d�     �   3   5   6      5        return ($facultyLed->active && $facultyLed->;5��    3   4                  Q                     5�_�   *   ,           +   3       ����                                                                                                                                                                                                                                                                                                                            4          4          v       d�     �   3   5   6    �   3   4   6    5��    3                                    $       5�_�   +   .           ,   4       ����                                                                                                                                                                                                                                                                                                                            5          5          v       d�    �   3   5   7      #            $today = date('Y-m-d');5��    3                     %                     5�_�   ,   /   -       .   5   ?    ����                                                                                                                                                                                                                                                                                                                            5          5          v       d�,    �   4   6   7      A        return ($facultyLed->active && $facultyLed->date_end >= ;5��    4   ?                  |                     �    4   E                 �                    5�_�   .               /   5   G    ����                                                                                                                                                                                                                                                                                                                            5          5          v       d�0    �   4   6   7      I        return ($facultyLed->active && $facultyLed->date_end >= $today) ;5��    4   G                  �                     5�_�   ,           .   -   4       ����                                                                                                                                                                                                                                                                                                                            5          5          v       d�     �   3   5   7               $today = date('Y-m-d ');5��    3                     9                     5�_�                   /       ����                                                                                                                                                                                                                                                                                                                                                             d�     �   /   0   2       5��    /                      �                     �    /                      �                     �    /                      �                     5�_�                    1       ����                                                                                                                                                                                                                                                                                                                                                             d�     �   0   2   3      ;        return is_null(optional($this->facultyLed)->active;5��    0                     �                     5�_�                     1   :    ����                                                                                                                                                                                                                                                                                                                                                             d�    �   0   2   3      <        return is_null(optional($this->facultyLed)->active);5��    0   :                  �                     5�_�                    0   "    ����                                                                                                                                                                                                                                                                                                                                                             d��     �   /   1   2      "        return $this->facultyLed->5��    /   "                  �                     5�_�              	      &       ����                                                                                                                                                                                                                                                                                                                                                             dQ͖     �   %   '          }       5��    %                     �                     �    &                      �                     5�_�                    $   A    ����                                                                                                                                                                                                                                                                                                                                                             dQ�     �   #   %   &      k        return $this->belongsToMany(Activity::class, 'activity_flStudent', 'fl_student_id', 'activity_id');5��    #   A                 �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dQ��     �         !       5��                          �                     �                          �                     �                          �                     5��