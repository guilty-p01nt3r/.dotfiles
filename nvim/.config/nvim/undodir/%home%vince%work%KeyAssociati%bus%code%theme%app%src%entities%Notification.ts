Vim�UnDo� ��d[S�;�@�IY_0��s?a�#ZQC�'"      2    status: "CANCELLED" | "MODIFIED" | "ASSIGNED",                             e?�>    _�                        
    ����                                                                                                                                                                                                                                                                                                                                                             e1/�    �      	   	          �      	   	    �      	       5��                          �                      �                         �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e10>    �      	   	          data: JSON,5��       
                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e11    �         	          read: boolean,5��                         T                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       e11    �         	          createdAt: string,5��                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       e11     �         	          type: string,5��                        f                     �                        j                     5�_�      	                    ����                                                                                                                                                                                                                                                                                                                                      	          V       e1Vp    �         	    �         	    5��                          9               ,       5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                                       
           V        e1Xo     �             �               �                    id: number,       user_type: string;       user_id: number;       title: string,       read_at: boolean,       status: string,       created_at: string,       data: string,5��                          )       �               �                          )               �       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                      
          V       e1Xp     �                   id: number,�             �                    user_type: string;       user_id: number;       title: string,       read_at: boolean,       status: string,       created_at: string,       data: string,5��                          9       �               �                         -                      �                  
       -               �       5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                V       e1Xr    �                       id: number,5��                         )                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       e1Xs    �                 5��                                               5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       e1X�   	 �                   }5��                      	                 	       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       e1X�   
 �                   �               �                'export default interface Notification {       id: number,       user_type: string,       user_id: number,       read_at: boolean,       created_at: string,       data: {           title: string,   6        status: "CANCELLED" | "MODIFIED" | "ASSIGNED",           ride_id: number,       } | string   }5��                                               �                                                    �                                           D      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e?�=    �               2    status: "CANCELLED" | "MODIFIED" | "ASSIGNED",5��              	          L       	              �                        O                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e1X�     �                A   }5��                                              5�_�              	              ����                                                                                                                                                                                                                                                                                                                                          B       V       e1Xi     �              �              �               Cimport WebPushNotifications from 'app/models/WebPushNotifications';5��                          )       �               �                          )               D       5�_�                           ����                                                                                                                                                                                                                                                                                                                                      
          V       e1V^     �         	          �         
      	    user_5��                          9                      �                         =                      5��