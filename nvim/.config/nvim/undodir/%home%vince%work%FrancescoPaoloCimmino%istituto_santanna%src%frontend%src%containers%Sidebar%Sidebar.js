Vim�UnDo� �䢑#_�J��j����^.V@��B�Z����  �           ,                       dY~    _�                    c       ����                                                                                                                                                                                                                                                                                                                           '   0      c          V       dY�     �  c  �  w    �  c  d  w    5��    c              =       �;              V      5�_�                   f   ,    ����                                                                                                                                                                                                                                                                                                                           e   !      e   !       V   !    dY�     �  e  g  �      .                                    key='sub1'5��    e  ,                 �<                    5�_�                   p        ����                                                                                                                                                                                                                                                                                                                           p   $      �   %       V   %    dY    �  o  p          d                                    <Menu.Item style={submenuStyle} key='notifies_course_semesters'>   k                                        <Link style={submenuColor} to={`${url}/notifies_course_semesters`}>   3                                            Courses   /                                        </Link>   0                                    </Menu.Item>   ]                                    <Menu.Item style={submenuStyle} key='notifies_semesters'>   d                                        <Link style={submenuColor} to={`${url}/notifies_semesters`}>   5                                            Semesters   /                                        </Link>   0                                    </Menu.Item>   2                                    <MenuItemGroup   ?                                        key='notifies_students'   8                                        title="Students"   %                                    >   )                                        {   M                                            semesterList?.map((semester) => (   D                                                semester.is_active ?   R                                                    <Menu.Item key={semester?.id}>   �                                                        <Link style={submenuColor} to={`${url}/notifies_students/${semester?.id}`}>   r                                                            {semester?.semester_type?.name + ' ' + semester?.year}   ?                                                        </Link>   @                                                    </Menu.Item>   ;                                                    : <></>   .                                            ))   )                                        }   4                                    </MenuItemGroup>5��    o                     �>      �              5�_�                   R        ����                                                                                                                                                                                                                                                                                                                           R   %      a   %       V   %    dY     �  Q  R          2                                    <MenuItemGroup   A                                        key='notifies_flstudents'   <                                        title="FLP Students"   %                                    >   )                                        {   M                                            facultyLed?.map((facultyLed) => (   C                                                facultyLed.active ?   T                                                    <Menu.Item key={facultyLed?.id}>   �                                                        <Link style={submenuColor} to={`${url}/notifies_flstudents/${facultyLed?.id}`}>   N                                                            {facultyLed?.name}   ?                                                        </Link>   @                                                    </Menu.Item>   ;                                                    : <></>   .                                            ))   )                                        }   4                                    </MenuItemGroup>5��    Q                     x7                    5�_�                   M   %    ����                                                                                                                                                                                                                                                                                                                           Q   %      M   %       V   %    dY    �  L  M          ^                                    <Menu.Item style={submenuStyle} key='notifies_facultyled'>   e                                        <Link style={submenuColor} to={`${url}/notifies_facultyled`}>   6                                            FacultyLed   /                                        </Link>   0                                    </Menu.Item>5��    L                     6      ]              5�_�                   V   0    ����                                                                                                                                                                                                                                                                                                                           M   %      M   %       V   %    dY#    �  U  W  �      8                                                Messages5��    U  0                  p8                     5�_�                   T   ,    ����                                                                                                                                                                                                                                                                                                                           M   %      M   %       V   %    dYT    �  S  U  �      Q                                            <i className='ion-android-options' />�  T  U  �    5��    S  ,       %       $   �7      %       $       5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                           ,   0      ,   0       V   0    dY}    �  +  -  �    �  ,  -  �    �  +  ,          Q                                            <i className='ion-android-options' />5��    +                     �-      R               �    +                     �-              Q       5��