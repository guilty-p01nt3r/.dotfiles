Vim�UnDo� 	0�Z�eD��O�"ڝ�n�d�QH�Ȥ�+�      >window="VIM-FRONT"; tnw; tsk 'cd src/frontend; vim . ' "C-m";       -                       d��c    _�                             ����                                                                                                                                                                                                                                                                                                                                                             dp��     �   
             0window="GIT"; tnw; tsk 'cd src ; lazygit' "C-m";5��    
                      �       1               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dp��     �               �               5��                                        1       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dp��    �                 5��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dp�      �               [window="D_SHELL"; tnw; tsk "docker exec -it ${dname}_php bash -c \" cd backend; bash \" ;";5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dp�     �               gwindow="DB"; tnw; tsk "docker exec -it ${dname}_mysql sh -c \"mysql --user=user --password=pwd db\" ;";5��                          K                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          dp�    �               Qwindow="LOGS"; tnw; tsk 'cd src/backend/storage/logs; tail -f laravel.log' "C-m";   window="SHELL"; tnw;�               h#window="DB"; tnw; tsk "docker exec -it ${dname}_mysql sh -c \"mysql --user=user --password=pwd db\" ;";5��                          K                     �                          �                     �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                       	                   dp�    �      
         ,tmux rename-window -t "${sname}:0" "$window"   @tmux send-keys -t "${sname}:$window" 'cd src/backend; vim .' C-m�               window="VIM-BACK"5��                          4                      �                          G                      �                          u                      5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             dp��    �               	dname=isa5��                        /                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             dq �     �      	         -#tmux rename-window -t "${sname}:0" "$window"5��                          L                      5�_�   	              
   	        ����                                                                                                                                                                                                                                                                                                                                                             dq �     �      
         A#tmux send-keys -t "${sname}:$window" 'cd src/backend; vim .' C-m5��                          y                      5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             dq �   	 �               #window="VIM-BACK"5��                          9                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dq �    �               window="VIM-BACK"5��                        A                     5�_�                      -    ����                                                                                                                                                                                                                                                                                                                                                             d��t    �               >window="VIM-FRONT"; tnw; tsk 'cd src/frontend; vim . ' "C-m"; 5��       -               
   �              
       5�_�                        3    ����                                                                                                                                                                                                                                                                                                                               6          3       v   3    d��b    �               Hwindow="VIM-FRONT"; tnw; tsk 'cd src/frontend/astro/src; vim . ' "C-m"; 5��       3                  �                     5�_�                    	   -    ����                                                                                                                                                                                                                                                                                                                                                             d��H    �      
         Atmux send-keys -t "${sname}:$window" 'cd src/frontend; vim .' C-m5��       -                 �                     5��