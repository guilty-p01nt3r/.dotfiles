Vim�UnDo� |<;M��Ǖ�fZw�q�:�ƖC3B���{�   	                                        e_A�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e_>.    �                       �                  �               5��                                                �                                                  �                                                  �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e_>p     �                  @if5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e_>|     �              �               5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e_>}     �                @if(5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e_>}     �                  �               5��                                                �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e_>�     �                @if (isset($rows))5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e_>�     �                �             �             5��                                                �                                                �                     	                  �      5�_�      	                 	    ����                                                                                                                                                                                                                                                                                                                                                             e_>�     �               @�             �               	    </tr>5��       	                  �                     �       
                  �                     �       	                  �                     �       	                  �                     �                          �                     5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                V       e_>�     �               !        <td>{{ $row->name }}</td>�                "        <td>{{ $row->email }}</td>   '        <td>{{ $row->created_at }}</td>   '        <td>{{ $row->updated_at }}</td>           <td>   [            <a href="{{ route('admins.show', $row->id) }}" class="btn btn-primary">Show</a>   [            <a href="{{ route('admins.edit', $row->id) }}" class="btn btn-warning">Edit</a>   b            <form action="{{ route('admins.destroy', $row->id) }}" method="POST" class="d-inline">                   @csrf   !                @method('DELETE')   L                <button type="submit" class="btn btn-danger">Delete</button>               </form>           </td>5��                          ]       B              �               !          ;       !              �                         ?                      �                         >                      �                         =                      �                         <                      �                         ;                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                V       e_>�     �                       5��                         ;                     �                         G                      �                        F                     �                         P                      �                        O                     �                         Q                      �                         P                      �                         O                      �                         N                      �                         M                      �                         L                      �                        K                     �                        K                     �                         M                      �                        L                     �                        W                     5�_�   
                       ����                                                                                                                                                                                                                                                                                                                                                V       e_>�    �                    �                       <td>{{ $row->domains->�             5��                         Y                      �                          �                      5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                V       e_>�     �                   �             5��                          y                      �                          y                      �                         �                      �                         �                      �                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e_?     �                       <td><<5��                         �                      �                         y                     �                         �                      �                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e_?     �               	   @if (isset($row))       <tr>           <td>{{ $row->id }}</td>   =        <td>{{ $row->domains->implode('domain', ', ') }}</td>       <td>           </td>   	    </tr>   @endif    5��                                 �       �       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e_?     �         	              �         	    �             5��                          v                      �                          v                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e_?     �         	              @if ($row->is_active)5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e_?     �         	              @if ($row->isActive)5��                         �                      �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       e_?^     �         	              @if ($row->isActive)�         	    �                            5��                          �                      �                         v                     �                        ~               �      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                V       e_?`    �                  @if (isset($row))   <tr>       <td>{{ $row->id }}</td>   9    <td>{{ $row->domains->implode('domain', ', ') }}</td>       <td>   M        <label class="relative inline-flex items-center me-5 cursor-pointer">   ?  <input type="checkbox" value="" class="sr-only peer" checked>  �  <div class="w-11 h-6 bg-gray-200 rounded-full peer dark:bg-gray-700 peer-focus:ring-4 peer-focus:ring-green-300 dark:peer-focus:ring-green-800 peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-green-600"></div>   V  <span class="ms-3 text-sm font-medium text-gray-900 dark:text-gray-300">Green</span>   </label>   	    </td>   </tr>   @endif5��                                _      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                      
          V       e_A�    �         	      M        <label class="relative inline-flex items-center me-5 cursor-pointer">�         	    �                I            <input type="checkbox" value="" class="sr-only peer" checked>  �            <div class="w-11 h-6 bg-gray-200 rounded-full peer dark:bg-gray-700 peer-focus:ring-4 peer-focus:ring-green-300 dark:peer-focus:ring-green-800 peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-green-600"></div>   `            <span class="ms-3 text-sm font-medium text-gray-900 dark:text-gray-300">Green</span>           </label>5��                          �       �              �               M          v       M              �                        �                     5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                V       e_A�    �         	      .        <x-toggle :checked="$row->is_active"/>5��       $                 �                     �       '                 �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       e_A�    �               	   @if (isset($row))   <tr>       <td>{{ $row->id }}</td>   9    <td>{{ $row->domains->implode('domain', ', ') }}</td>       <td>   -        <x-toggle :checked="$row->isActive"/>   	    </td>   </tr>   @endif5��                                �       �       5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                V       e_>�     �                        <td>{{ $row->domains->im5��                         Y                      5��