Vim�UnDo� v�C��2�+�]n���j����$i�m�� ֫   +   D            'target_url' => config('app.url') . 'app/notifications',   '   5      	       	   	   	    e:i�    _�                     %   $    ����                                                                                                                                                                                                                                                                                                                            %   $       %   8       v   7    e:C�     �   $   &   ,      ;            'title' => 'La corsa è stata presa in carico',5��    $   $                 �                    5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            &          '   I       v   I    e:D    �   %   '   +                  'message' => '�   &   '   +    �   %   '   ,      ]            'message' => 'L\'autista' . $this->driver->name .  " " . $this->driver->surname .   J                ' ha preso in carico la corsa' . $this?->ride?->itinerary,5��    %         J                  �               �    %                                           �    %                 	                 	       �    %   "              ,   (             ,       5�_�                    &   2    ����                                                                                                                                                                                                                                                                                                                            &          &   c       v   I    e:DF    �   %   '   +      N            'message' => 'La corsa ' . $this->ride->itinerary . ' è partita',5��    %   2                  8                     5�_�                    &   '    ����                                                                                                                                                                                                                                                                                                                            &          &   c       v   I    e:DJ     �   %   '   +      O            'message' => 'La corsa ' . $this->ride?->itinerary . ' è partita',5��    %   '                  -                     5�_�                    &   ?    ����                                                                                                                                                                                                                                                                                                                            &          &   c       v   I    e:DL     �   %   '   +      P            'message' => 'La corsa ' . ($this->ride?->itinerary . ' è partita',5��    %   ?                  E                     5�_�                    &   ?    ����                                                                                                                                                                                                                                                                                                                            &          &   c       v   I    e:DL    �   %   '   +      Q            'message' => 'La corsa ' . ($this->ride?->itinerary) . ' è partita',5��    %   ?                  E                     5�_�                    	        ����                                                                                                                                                                                                                                                                                                                            &          &   c       v   I    e:Dp    �      
   +      5class RideTakenByDriver extends ArrayableNotification5��       
                 �                     5�_�      	              '   5    ����                                                                                                                                                                                                                                                                                                                            &          &   c       v   I    e:U�    �   &   (   +      D            'target_url' => config('app.url') . 'app/notifications',5��    &   5                 �                    5�_�                  	   '   1    ����                                                                                                                                                                                                                                                                                                                                                             e:i�    �   &   (   +      <            'target_url' => config('app.url') . 'app/rides',5��    &   1                  �                     5��