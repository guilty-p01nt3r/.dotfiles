Vim�UnDo� >A���y�J3����w�}�Qeq�>�q��k             	         	       	   	   	    e-A�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             e-A�     �         /      trait SortableTrait�         /    5��                        O                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e-A�    �         /      trait isArrayable5��                         Z                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e-A�     �               /   <?php       namespace App\Traits;       )use Illuminate\Database\Eloquent\Builder;       trait isArrayableTrait   {       protected $sortable = [];           /*   8    * @param Illuminate\Database\Eloquent\Builder $query       * @param array $sorters   	    *   [       *       field1 => [   0    *           sortOn => relation_field | null,   +    *           direction => "ASC" | "DESC"       *       ],       *       *       field2 => [   a    *               operation => "LIKE" | "=" | "!=" | ">" | "<" | ">=" | "<=" | "IN" | "NOT IN",   "    *               value => value       *       ]   	    *   ]       *   2    * @return Illuminate\Database\Eloquent\Builder       * */   9    public function scopeSorted(Builder $query, $sorters)       {   5        if (empty($sorters) || !is_array($sorters)) {               return $query;   	        }       1        foreach ($sorters as $field => $sorter) {   E            if (!in_array($sorter['field'], $this->sortable, true)) {                   continue;               }   ,            if (!empty($sorter['sortOn'])) {   1                $field .= ".{$sorter['sortOn']}";   H                $query->orderByPowerJoins($field, $sorter['direction']);                   continue;               }   :            $query->orderBy($field, $sorter['direction']);   	        }           return $query;       }   }5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e-A�     �         /      trait isArrayableTrait5��                         O                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e-A�     �         /      trait sArrayableTrait5��                         O                      5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            	          	          V       e-A�     �      
   
          protected $sortable = [];�   	   
       %           /*   8    * @param Illuminate\Database\Eloquent\Builder $query       * @param array $sorters   	    *   [       *       field1 => [   0    *           sortOn => relation_field | null,   +    *           direction => "ASC" | "DESC"       *       ],       *       *       field2 => [   a    *               operation => "LIKE" | "=" | "!=" | ">" | "<" | ">=" | "<=" | "IN" | "NOT IN",   "    *               value => value       *       ]   	    *   ]       *   2    * @return Illuminate\Database\Eloquent\Builder       * */   9    public function scopeSorted(Builder $query, $sorters)       {   5        if (empty($sorters) || !is_array($sorters)) {               return $query;   	        }       1        foreach ($sorters as $field => $sorter) {   E            if (!in_array($sorter['field'], $this->sortable, true)) {                   continue;               }   ,            if (!empty($sorter['sortOn'])) {   1                $field .= ".{$sorter['sortOn']}";   H                $query->orderByPowerJoins($field, $sorter['direction']);                   continue;               }   :            $query->orderBy($field, $sorter['direction']);   	        }           return $query;       }5��    	       %               ~       V              �                      
   `              
       �       	                 i                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                         
       v   
    e-A�    �         
          toArray()�   	   
   
    5��                        m               5       5�_�      	              	       ����                                                                                                                                                                                                                                                                                                                                         
       v   
    e-A�     �      
             toArray(): array5��                         d                      5�_�                  	   	       ����                                                                                                                                                                                                                                                                                                                                         
       v   
    e-A�    �      
             public toArray(): array5��                      	   k               	       5��