Vim�UnDo� �e���VɇD��{�~X<i� �(�������   �   %        path: 'notifies_facultyleds',   O   "      #       #   #   #    dW��    _�                     T        ����                                                                                                                                                                                                                                                                                                                                                             d8)�    �   S   U   �      "        path: 'notifies_students',5��    S                      �	                     5�_�                    `       ����                                                                                                                                                                                                                                                                                                                                                             dJ��     �   `   b   �          �   `   b   �    5��    `                      e                     �    `                     i                     5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             dJ��    �   `   c   �          {},5��    `                    j                     5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             dJ��    �   a   c   �    5��    a                      k                     �    a                     k                    �    a                      k                     5�_�                    d        ����                                                                                                                                                                                                                                                                                                                            d          h          V       dJ�    �   c   i   �    �   d   e   �    �   c   d              {           url: 'help',           path: 'help',   C        component: lazy(() => import('@iso/containers/Help/Help')),       },5��    c                      s      |               �    c                      s              �       5�_�                    e       ����                                                                                                                                                                                                                                                                                                                            d           h          V       dJ�     �   d   f   �      "        url: 'students_confirmed',5��    d                    �                    5�_�                    f       ����                                                                                                                                                                                                                                                                                                                            d           h          V       dJ�    �   e   g   �      '        path: 'students_confirmed/:id',�   f   g   �    5��    e                    �                    5�_�      	              f       ����                                                                                                                                                                                                                                                                                                                            d           h          V       dJ�     �   e   g   �              path: 'facultyLeds',5��    e                    �                    5�_�      
           	   e       ����                                                                                                                                                                                                                                                                                                                            d           h          V       dJ�    �   d   f   �              url: 'facultyLeds',5��    d                    �                    5�_�   	              
   g   6    ����                                                                                                                                                                                                                                                                                                                            d           h          V       dJ�    �   f   h   �      ]        component: lazy(() => import('@iso/containers/StudentsConfirmed/StudentsConfirmed')),�   g   h   �    5��    f   6       '          �      '              5�_�   
                         ����                                                                                                                                                                                                                                                                                                                            d           h          V       dK�     �               �   .import React, { lazy, Suspense } from 'react';   @import { Route, useRouteMatch, Switch } from 'react-router-dom';   4import Loader from '@iso/components/utility/loader';   7import { useDispatch, useSelector } from 'react-redux';   5import authHelper from '@iso/lib/helpers/authHelper';       const routesAccessible = {   \    'company': ['dashboard', 'students_confirmed', 'students_pending', 'students_archived'],   }       -const isRouteAccsessible = (route, role) => {       if(!role || !route){           return false;       }       role = role.toLowerCase();        if(!routesAccessible[role]){           return true;       }       E    const isAccessible = routesAccessible[role].includes(route?.url);       return isAccessible;   }           const routes = [       {           url: 'companies',           path: 'companies',   M        component: lazy(() => import('@iso/containers/Companies/Companies')),       },       {           url: 'dashboard',           path: '',   C        component: lazy(() => import('@iso/containers/BlankPage')),           exact: true,       },       {   "        url: 'students_confirmed',   '        path: 'students_confirmed/:id',   ]        component: lazy(() => import('@iso/containers/StudentsConfirmed/StudentsConfirmed')),       },       {            url: 'students_pending',   !        path: 'students_pending',   Y        component: lazy(() => import('@iso/containers/StudentsPending/StudentsPending')),       },       {   !        url: 'students_archived',   "        path: 'students_archived',   C        component: lazy(() => import('@iso/containers/BlankPage')),       },       {            url: 'courses_registry',   !        path: 'courses_registry',   I        component: lazy(() => import('@iso/containers/Courses/Courses')),       },       {            url: 'courses_schedule',   %        path: 'courses_schedule/:id',   Y        component: lazy(() => import('@iso/containers/CoursesSchedule/CoursesSchedule')),       },       {           url: 'semesters',           path: 'semesters',   M        component: lazy(() => import('@iso/containers/Semesters/Semesters')),       },       {           url: 'activities',           path: 'activities',   O        component: lazy(() => import('@iso/containers/Activities/Activities')),       },       {   )        url: 'notifies_course_semesters',   *        path: 'notifies_course_semesters',   b        component: lazy(() => import('@iso/containers/Messages/CourseSemesters/CourseSemesters')),       },       {   "        url: 'notifies_semesters',   #        path: 'notifies_semesters',   V        component: lazy(() => import('@iso/containers/Messages/Semesters/Semesters')),       },       {   !        url: 'notifies_students',   &        path: 'notifies_students/:id',   T        component: lazy(() => import('@iso/containers/Messages/Students/Students')),       },       {           url: 'admins',           path: 'admins',   G        component: lazy(() => import('@iso/containers/Admins/Admins')),       },       {           url: 'roles',           path: 'roles',   E        component: lazy(() => import('@iso/containers/Roles/Roles')),       },       {           },       {           url: 'faculty_leds',           path: 'faculty_leds',   Q        component: lazy(() => import('@iso/containers/FacultyLeds/FacultyLeds')),       },   ];       %export default function AppRouter() {   $    const { url } = useRouteMatch();   G    const [currentRoleCode, setCurrentRoleCode] = React.useState(null);   1    const [user, setUser] = React.useState(null);           React.useEffect(() => {   ,        authHelper.me().then((response) => {   4            if (response.success && response.data) {   .                setUser(response?.data?.user);               }           });       }, []);           React.useEffect(() => {           if (user) {   1            setCurrentRoleCode(user?.role?.code);   	        }       }, [user]);           return (   (        <Suspense fallback={<Loader />}>               <Switch>                   {routes   Q                    ?.filter(route => isRouteAccsessible(route, currentRoleCode))   +                    ?.map((route, idx) => (   W                    <Route exact={route.exact} key={idx} path={`${url}/${route.path}`}>   +                        <route.component />                       </Route>                   ))}               </Switch>           </Suspense>       );   }5�5�_�                    a        ����                                                                                                                                                                                                                                                                                                                            a          c          V       dK�     �   `   f   �    �   a   b   �    �   `   a              {           },5��    `                      e                     �    `                      e              �       5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            a           e          V       dK�     �   a   c   �      "        url: 'students_confirmed',5��    a                    y                    �    a                     ~                     �    a                    |                    �    a                     |                     �    a                     {                     �    a                     z                     �    a                    y                    �    a                    y                    �    a                    y                    5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            a           e          V       dK�     �   a   c   �              url: 'FacultyLeds',5��    a                     �                     5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            a           e          V       dK�     �   a   c   �              url: 'FacultyLceds',5��    a                     �                     5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            a           e          V       dK�     �   a   c   �              url: 'FacultyL',5��    a                    y                    �    a                     �                     �    a                     �                     5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            a           e          V       dK�     �   a   c   �              url: 'students_',5��    a          	          y      	              �    a                 	   |             	       �    a                     �                     �    a                    �                    5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            a           e          V       dK%    �   a   c   �      "        url: 'fl_student_pending',5��    a                     �                     5�_�                    c       ����                                                                                                                                                                                                                                                                                                                            c          c           v        dK-   	 �   b   d   �      '        path: 'students_confirmed/:id',�   c   d   �    5��    b                    �                    5�_�                    d   6    ����                                                                                                                                                                                                                                                                                                                            c          c   !       v        dKY   
 �   c   e   �      ]        component: lazy(() => import('@iso/containers/StudentsConfirmed/StudentsConfirmed')),�   d   e   �    5��    c   6       '       '   �      '       '       5�_�                    V        ����                                                                                                                                                                                                                                                                                                                            R          V          V   6    dUf&     �   V   \   �    �   V   W   �    5��    V                      a
              �       5�_�                    M       ����                                                                                                                                                                                                                                                                                                                            Q          M          V       dUf*     �   L   R   �    �   M   N   �    5��    L                      	              �       5�_�                   N       ����                                                                                                                                                                                                                                                                                                                            V          R          V       dUf2     �   M   O   �      "        url: 'notifies_semesters',5��    M          	          (	      	              5�_�                    O        ����                                                                                                                                                                                                                                                                                                                            O   !       P   !       V   !    dUfB    �   N   P   �      #        path: 'notifies_semesters',5��    N          	          N	      	              5�_�                    P   ?    ����                                                                                                                                                                                                                                                                                                                            P   ?       P   G       v   G    dUfH     �   O   Q   �      V        component: lazy(() => import('@iso/containers/Messages/Semesters/Semesters')),5��    O   ?       	          �	      	              �    O   F                  �	                     5�_�                    P   F    ����                                                                                                                                                                                                                                                                                                                            P   ?       P   G       v   G    dUfM     �   O   Q   �      T        component: lazy(() => import('@iso/containers/Messages/Faculty/Semesters')),5��    O   F                  �	                     5�_�                    P   L    ����                                                                                                                                                                                                                                                                                                                            P   ?       P   G       v   G    dUfO    �   O   Q   �      X        component: lazy(() => import('@iso/containers/Messages/FacultyLeds/Semesters')),5��    O   L                  �	                     5�_�                    P   K    ����                                                                                                                                                                                                                                                                                                                            P   ?       P   G       v   G    dUfP    �   O   Q   �      \        component: lazy(() => import('@iso/containers/Messages/FacultyLeds/SLedsemesters')),5��    O   K                 �	                    �    O   M                  �	                     �    O   L                  �	                     �    O   K                 �	                    �    O   K                 �	                    �    O   K                 �	                    5�_�                    Z   H    ����                                                                                                                                                                                                                                                                                                                            P   ?       P   G       v   G    dUfd    �   Y   [   �      T        component: lazy(() => import('@iso/containers/Messages/Students/Students')),5��    Y   H                                        5�_�                     Z   ?    ����                                                                                                                                                                                                                                                                                                                            P   ?       P   G       v   G    dUfh    �   Y   [   �      V        component: lazy(() => import('@iso/containers/Messages/Students/FlStudents')),5��    Y   ?                  �
                     5�_�      !               X       ����                                                                                                                                                                                                                                                                                                                            X          X          v       dV��     �   W   Y   �      !        url: 'notifies_students',5��    W                     �
                     5�_�       "           !   Y       ����                                                                                                                                                                                                                                                                                                                            X          X          v       dV�     �   X   Z   �      &        path: 'notifies_students/:id',5��    X                     �
                     5�_�   !   #           "   N   !    ����                                                                                                                                                                                                                                                                                                                                                             dW��     �   M   O   �      $        url: 'notifies_facultyleds',5��    M   !                  2	                     5�_�   "               #   O   "    ����                                                                                                                                                                                                                                                                                                                                                             dW��    �   N   P   �      %        path: 'notifies_facultyleds',5��    N   "                  W	                     5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            V          R          V       dUf.     �   M   O   �              url: 'notifies_',5��    M          	           (	      	               5��