Vim�UnDo� a;�)�m�ϫ�
����2�8����}�����/      �                                            <span className='text-xl'>[{ list.apartments?.length > 0 ? totalWorkTim(list.apartments): "00:00"} h]</span>   n   s                       dEYg    _�                             ����                                                                                                                                                                                                                                                                                                                                                 V       dEX�    �                    Cconst totalWorkTime = (apartments:  Array<IApartment>): string => {       let hours = 0;       let minutes = 0;   3    apartments.forEach((apartment: IApartment) => {   A        hours += apartment?.timeTables?.workTime.getHours() ?? 0;   E        minutes += apartment?.timeTables?.workTime.getMinutes() ?? 0;       });   #    hours+= Math.floor(minutes/60);       minutes = minutes % 60;   �    return hours.toLocaleString(undefined, { minimumIntegerDigits: 2 }) + ':' + minutes.toLocaleString(undefined, { minimumIntegerDigits: 2 });   }5��                          �                    5�_�                    m   t    ����                                                                                                                                                                                                                                                                                                                                                 V       dEYX    �   l   n   ~      �                                            <span className='text-xl'>[{ list.apartments?.length > 0 ? totalWorkTime(list.apartments): "00:00"} h]</span>5��    l   s                 �                    5�_�                     m   t    ����                                                                                                                                                                                                                                                                                                                                                 V       dEYf    �   m   o         �                                            <span className='text-xl'>[{ list.apartments?.length > 0 ? totalWorkTim(list.apartments): "00:00"} h]</span>�      
   ~       �   l   n   ~      �                                            <span className='text-xl'>[{ list.apartments?.length > 0 ? totalWorkTime(list.apartments): "00:00"} h]</span>5��    l   g                 �                    �    l   g                 �                    �                          �              8       �    m   g                 �                    5��