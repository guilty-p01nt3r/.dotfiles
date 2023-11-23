Vim�UnDo� e�0
��ܱ�fߓy��c��us�0����T��                                     eJ z    _�                             ����                                                                                                                                                                                                                                                                                                                                       z           V        eH�G     �               �               �             s   {   *    protected readonly array $HTTP_HEADER;   ,    protected readonly string $BASE_API_URL;   )    protected readonly \CurlHandle $CURL;       G    protected function createCurlHandle(array $httpHeader): \CurlHandle       {           $ch = curl_init();   2        $this->resetCurlOptions($ch, $httpHeader);           return $ch;       }       4    protected function buildHeadersFromMap($headers)       {           $headers = array_merge(   3            ["content-type" => "application/json"],               $headers   
        );   2        return array_map(function ($key, $value) {   "            return "$key: $value";   9        }, array_keys($headers), array_values($headers));       }       M    protected function resetCurlOptions(\CurlHandle &$ch, $httpHeader = null)       {           if (!$httpHeader) {   -            $httpHeader = $this->HTTP_HEADER;   	        }           curl_setopt(               $ch,               CURLOPT_HTTPHEADER,   3            $this->buildHeadersFromMap($httpHeader)   
        );   *        curl_setopt($ch, CURLOPT_POST, 1);   7        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);       }       2    protected function setRequestData(array $data)       {   I        curl_setopt($this->CURL, CURLOPT_POSTFIELDS, json_encode($data));       }       4    protected function setEndpoint(string $endPoint)       {   9        curl_setopt($this->CURL, CURLOPT_URL, $endPoint);       }       .    public function __construct($admin = true)       {   m        $this->HTTP_HEADER = $admin ? config("webpushr.admin.httpHeader"): config("webpushr.app.httpHeader");   <        $this->BASE_API_URL = config("webpushr.baseApiUrl");   B        $this->CURL = $this->createCurlHandle($this->HTTP_HEADER);       }            public function __destruct()       {            curl_close($this->CURL);       }       _    public function sendNotificationToAll(PushNotification $pushNotification, array $opts = [])       {   =        $this->setEndpoint($this->BASE_API_URL . "send/all");           $this->setRequestData([   p            "title" => isset($pushNotification->data["title"]) ? $pushNotification->data["title"] : "Notifica!",   �            "message" => isset($pushNotification->data["message"]) ? $pushNotification->data["message"] : "Hai ricevuto una notifica!",   �            "target_url" => isset($pushNotification->data["target_url"]) ? $pushNotification->data["target_url"] : config("app.url"),               ...$opts,           ]);   +        $response = curl_exec($this->CURL);           return $response;       }       l    public function sendNotificationToSingle(PushNotification $pushNotification, int $sid, array $opts = [])       {   K        $this->setEndpoint($this->BASE_API_URL . "/notification/send/sid");           $this->setRequestData([   p            "title" => isset($pushNotification->data["title"]) ? $pushNotification->data["title"] : "Notifica!",   �            "message" => isset($pushNotification->data["message"]) ? $pushNotification->data["message"] : "Hai ricevuto una notifica!",   �            "target_url" => isset($pushNotification->data["target_url"]) ? $pushNotification->data["target_url"] : config("app.url"),               "sid" => $sid,               ...$opts,           ]);   +        $response = curl_exec($this->CURL);           return $response;       }       v    public function sendNotificationToSegment(PushNotification $pushNotification, array $segmentIDs, array $opts = [])       {   O        $this->setEndpoint($this->BASE_API_URL . "/notification/send/segment");           $this->setRequestData([   p            "title" => isset($pushNotification->data["title"]) ? $pushNotification->data["title"] : "Notifica!",   �            "message" => isset($pushNotification->data["message"]) ? $pushNotification->data["message"] : "Hai ricevuto una notifica!",   �            "target_url" => isset($pushNotification->data["target_url"]) ? $pushNotification->data["target_url"] : config("app.url"),   %            "segment" => $segmentIDs,               ...$opts,           ]);   +        $response = curl_exec($this->CURL);           return $response;       }       ~    public function sendNotificationToCustomAttribute(PushNotification $pushNotification, array $attributes, array $opts = [])       {   Q        $this->setEndpoint($this->BASE_API_URL . "/notification/send/attribute");           $this->setRequestData([   p            "title" => isset($pushNotification->data["title"]) ? $pushNotification->data["title"] : "Notifica!",   �            "message" => isset($pushNotification->data["message"]) ? $pushNotification->data["message"] : "Hai ricevuto una notifica!",   �            "target_url" => isset($pushNotification->data["target_url"]) ? $pushNotification->data["target_url"] : config("app.url"),   '            "attribute" => $attributes,               ...$opts,           ]);       +        $response = curl_exec($this->CURL);           return $response;       }   }5��           s               M       B              �                          M               �      5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                  V        eH�J    �               A        $this->HTTP_HEADER = config("webpushr.admin.httpHeader");5��       .                 ,                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        eH�O    �               class Webpushr�             5��                         L                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        eH�Q     �                 use App\Models\PushNotification;5��                                 !               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        eH�R    �                 5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        eJ o     �             �             5��                                                5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        eJ r     �             �             �                namespace App\Libs;5��                                                �                                                5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  V        eJ x     �             �             5��                          	                      5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        eJ x     �                 5��                                                5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        eJ y     �                 5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        eJ y    �               namespace App\Libs\Webpushr;5��                                               �                          	                      �                          	                      �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        eJ n     �              �             �               namespace App\Libs\Webpushr;5��                                                �                                                5��