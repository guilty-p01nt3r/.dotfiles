Vim�UnDo� ��}��vD��I��n�^�+DQ�G��� �#      $            $query->load($hidrator);                             d\�E    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d\��     �                   �               5��                                         =      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d\��    �                  5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d\��    �   
            9    public function scopeSorted(Builder $query, $sorters)5��    
                    �                     5�_�                       :    ����                                                                                                                                                                                                                                                                                                                                                             d\��    �   
            ;    public function scopeHidrated(Builder $query, $sorters)5��    
   0       
           �       
               5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             d\��     �   
            1    public function scopeHidrated(Builder $query)5��    
   0                  �                      5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d\��     �      
             protected $sortable = [];�   	   
       5��                        m                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               &          	       V���    d\��    �               '        foreach ($sorters as $sorter) {�             �                D            $query->orderBy($sorter['field'], $sorter['direction']);   	        }5��                          �       O               �               '          �       '              �                     	   �               v       5�_�      	                 .    ����                                                                                                                                                                                                                                                                                                                               E          .       v   .    d\��     �               H            $query->orderBy($hidrator['field'], $hidrator['direction']);5��       .                                       5�_�      
           	      0    ����                                                                                                                                                                                                                                                                                                                               E          .       v   .    d\��     �   
            2    public function scopeHidrated(Builder $query,)5��    
   0                  �                      5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                               /          /       v   0    d\��    �               0            $query->orderBy($hidrator['field']);�             5��                        �                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               /          /       v   0    d\�    �               +        foreach ($hidrators as $hidrator) {5��                         �                      5�_�                    	       ����                                                                                                                                                                                                                                                                                                                               /          /       v   0    d\�"    �      
             protected $hidrators = [];5��                         l                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�'     �               1        foreach ($this->hidrators as $hidrator) {5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�)     �               +        foreach ($hidrators as $hidrator) {5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�+     �               *        foreach (hidrators as $hidrator) {5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�.     �               2        foreach ($self:: hidrators as $hidrator) {5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�0    �               1        foreach ($self::hidrators as $hidrator) {5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�7   	 �               0        foreach (self::hidrators as $hidrator) {5��                         �                      5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       d\�J   
 �               trait HasApiCrudTrait�             5��                        L                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       d\�O     �                 5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�P    �             5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�w     �               &use Illuminate\Database\Query\Builder;5��              "           "       "               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�}    �               use �             5��                      %   "               %       5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       d\��    �      
         %    protected static $hidrators = [];5��                         o                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�     �               1        foreach (self::$hidrators as $hidrator) {5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d\�
    �               2        foreach ($this->$hidrators as $hidrator) {5��                         �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       d\�D    �               $            $query->load($hidrator);5��                        �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       d\�>     �      
         $    protected static hidrators = [];5��                         s                      5��