Vim�UnDo� �������4�	��7�������"��F�   -   9                                src={imageByIndex(index)}   "   %      &       &   &   &    e2�k    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e2��    �                   �               5��                    #                      �      5�_�                      
    ����                                                                                                                                                                                                                                                                                                                                                             e2�.     �         $        slides: number[]�         $    5��       
                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e2�1    �         $        slides: { index: number }[]�         $    5��                         �                      �                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       e2�;    �                4              <div className="embla__slide__number">   (                <span>{index + 1}</span>                 </div>5��                          Z      s               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�r    �      	   "        evtCal�      	   "    �      	   "        options?: EmblaOptionsType    �      	   "          �      	   !    5��                          �                      �                         �                     �                         �                      �                         �                      �                         �                      �                         �                      �                         �                     �                          �                      �                         �                      �                        �                      �                         �                     �                         �                      �                         �                      �                         �                      �                         �                     �                         �                      �                         �                      �                     #   �              #       5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         #          �         "    5��                          �                     �                         �                    �                          �                     �                         �                     �                         �                     �                         �                     �                         �                     �                          �                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         $       �         $    5��                          �                     �                     ^   �              �       5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         %      z      const onSelect = useCallback((emblaApi, eventName) => {    console.log(`Embla just triggered ${eventName}!`)  }, [])5��                         �                    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         %      x    const onSelect = useCallback((emblaApi, eventName) => {    console.log(`Embla just triggered ${eventName}!`)  }, [])5��                          �                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                V       e2��    �         %      tconst onSelect = useCallback((emblaApi, eventName) => {    console.log(`Embla just triggered ${eventName}!`)  }, [])5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         %    5��                                               �                                               �                                              �                                              �                                              �                                               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         &      ^  useEffect(() => {    if (emblaApi) emblaApi.on('select', onSelect)  }, [emblaApi, onSelect])5��                                              �                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2��     �         &      *  slides: { index: number, src: string }[]�         &        options?: EmblaOptionsType�      	   &      '  evtCallback?: (index: number) => void�         &      #  const { slides, options } = props�         &      .  const [emblaRef] = useEmblaCarousel(options)�         &      zconst onSelect = React.useCallback((emblaApi, eventName) => {    console.log(`Embla just triggered ${eventName}!`)  }, [])�         &      d  React.useEffect(() => {    if (emblaApi) emblaApi.on('select', onSelect)  }, [emblaApi, onSelect])�         &      
  return (�         &          <div className="embla">�         &      6      <div className="embla__viewport" ref={emblaRef}>�         &      *        <div className="embla__container">�         &      "          {slides.map((index) => (�         &      6            <div className="embla__slide" key={index}>�         &                    <img�         &      -                className="embla__slide__img"�         &      )                src={imageByIndex(index)}�         &      #                alt="Your alt text"�         &                    />�         &                  </div>�          &                ))}�      !   &              </div>�       "   &            </div>�   !   #   &      
    </div>�   "   $   &        )5��    "                     L                    �    !                     A                    �                          4                    �                         %                    �               
                
              �                                             �                         �                    �                          �                     �                          �                     �                          w                     �                         d                    �                         -                    �               
          
      
              �                         �                    �                         �                    �                         �                    �                         �                    �       J                 e                    �                        4                    �                                             �       r                                     �       =                 �                    �                          �                     �                         o                    �                         K                    �                         �                     �                         �                     �                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2��    �         &      0    const [emblaRef] = useEmblaCarousel(options)5��                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�     �         &      b    React.useEffect(() => { if (emblaApi) emblaApi.on('select', onSelect) }, [emblaApi, onSelect])5��                       J                    �                         K                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�     �         '      N        if (emblaApi) emblaApi.on('select', onSelect) }, [emblaApi, onSelect])5��       6                  �                     �       5                 �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�     �         (      5        if (emblaApi) emblaApi.on('select', onSelect)5��                         a                     5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                V       e2�     �         (      6        if (emblaApi) {emblaApi.on('select', onSelect)5��       6                  �                     5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                V       e2�     �         (      7        if (emblaApi) {emblaApi.on('select', onSelect)}5��       6                  �                     �                         b                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�     �         (      9        if (emblaApi) { emblaApi.on('select', onSelect) }5��                       b             	       �                         c                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�   	 �         )      -            emblaApi.on('select', onSelect) }5��       ,                  �                     �       +                 �                    5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                V       e2�!     �         *      z    const onSelect = React.useCallback((emblaApi, eventName) => { console.log(`Embla just triggered ${eventName}!`) }, [])5��       '                 �                     �                         �                    5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                V       e2�#     �         +      [        (emblaApi, eventName) => { console.log(`Embla just triggered ${eventName}!`) }, [])5��       "                �             	       �                         �                    �                         
                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e2�%   
 �         ,      D            console.log(`Embla just triggered ${eventName}!`) }, [])5��       >                  <                     �       =                 ;                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V       e2�)    �         -      =            console.log(`Embla just triggered ${eventName}!`)�         -    5��              1       *   
      1       *       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V       e2�=     �         -      6            evtCallback(emblaApi.selectedScrollSnap())5��                         
                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V       e2�>     �         .                  �         .    �         -    5��                          �              	       �                      "   �             "       5�_�                           ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�A     �         .      "            console.log(eventName)5��                                              �                                            �                                            �                     	                	       �                                             5�_�                       !    ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�D    �         .      +            console.log(emblaApi,eventName)5��       !                                       5�_�                            ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�H     �         .      "        (emblaApi, eventName) => {5��                         �                     5�_�      !                      ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�I     �         .      #        (emblaApi, eventName:) => {�         .    5��                        �                    5�_�       #           !          ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�L     �         .      *        (emblaApi, eventName: string) => {5��                         �                     5�_�   !   $   "       #          ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�T    �         .      +        (emblaApi:, eventName: string) => {�         .      Iimport useEmblaCarousel, { EmblaOptionsType } from 'embla-carousel-react'5��                      	   �              	       �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                        �                    �                        �                    �                         5                      �                                            5�_�   #   %           $      #    ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�Y    �                )import imageByIndex from './imageByIndex'5��                          w       *               5�_�   $   &           %      !    ����                                                                                                                                                                                                                                                                                                                                                  V       e2�f     �         -      ,                    {slides.map((index) => (5��       !              
   �             
       5�_�   %               &   "   %    ����                                                                                                                                                                                                                                                                                                                                                  V       e2�j    �   !   #   -      9                                src={imageByIndex(index)}5��    !   %                 �                    5�_�   !           #   "          ����                                                                                                                                                                                                                                                                                                                            !          !          V       e2�N     �         .              (emblaApi:5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e2�    �              5��                          d       *               5��