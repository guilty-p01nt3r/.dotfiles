Vim�UnDo� �9����!*�� �� �f_h���
t���   �                                   d���    _�                     -       ����                                                                                                                                                                                                                                                                                                                                                             do�    �   ,   -                          debugger;5��    ,                      X                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             do�     �               �   -/* eslint-disable jsx-a11y/anchor-is-valid */    import { useState } from 'react'   import * as Yup from 'yup'   import clsx from 'clsx'   'import { Link } from 'react-router-dom'   "import { useFormik } from 'formik'   9import { getUserByToken, login } from '../core/_requests'   &import { useAuth } from '../core/Auth'       (const loginSchema = Yup.object().shape({       email: Yup.string()   $        .email('Wrong email format')   $        .min(3, 'Minimum 3 symbols')   &        .max(50, 'Maximum 50 symbols')   '        .required('Email is required'),       password: Yup.string()   $        .min(3, 'Minimum 3 symbols')   &        .max(50, 'Maximum 50 symbols')   *        .required('Password is required'),   })       const initialValues = {       email: '',       password: '',   }       /*     Formik+YUP+Typescript:   <  https://jaredpalmer.com/formik/docs/tutorial#getfieldprops   ]  https://medium.com/@maurice.de.beijer/yup-validation-and-typescript-and-formik-6c342578a20e   */       export function Login() {   1    const [loading, setLoading] = useState(false)   2    const { saveAuth, setCurrentUser } = useAuth()           const formik = useFormik({           initialValues,   &        validationSchema: loginSchema,   C        onSubmit: async (values, { setStatus, setSubmitting }) => {               setLoading(true)               try {   Q                const { data: auth } = await login(values.email, values.password)                   saveAuth(auth);   K                const { data: user } = await getUserByToken(auth.api_token)   $                setCurrentUser(user)               } catch (error) {   $                console.error(error)   #                saveAuth(undefined)   <                setStatus('The login details are incorrect')   $                setSubmitting(false)   !                setLoading(false)               }   
        },       })           return (           <form   "            className='form w-100'   *            onSubmit={formik.handleSubmit}               noValidate   %            id='kt_login_signin_form'   	        >   "            {/* begin::Heading */}   /            <div className='text-center mb-11'>   C                <h1 className='text-dark fw-bolder mb-3'>Login</h1>   c                {/* <div className='text-gray-500 fw-semibold fs-6'>Your Social Campaigns</div> */}               </div>   "            {/* begin::Heading */}       $            {/* begin::Separator */}               {/*   9      <div className='separator separator-content my-14'>   U        <span className='w-125px text-gray-500 fw-semibold fs-7'>Or with email</span>         </div>               */}   "            {/* end::Separator */}                   {formik.status ? (   =                <div className='mb-lg-15 alert alert-danger'>   V                    <div className='alert-text font-weight-bold'>{formik.status}</div>                   </div>               ) : (                       <></>               )}       %            {/* begin::Form group */}   )            <div className='fv-row mb-8'>   T                <label className='form-label fs-6 fw-bolder text-dark'>Email</label>                   <input   '                    placeholder='Email'   6                    {...formik.getFieldProps('email')}   $                    className={clsx(   6                        'form-control bg-transparent',   V                        { 'is-invalid': formik.touched.email && formik.errors.email },                           {   U                            'is-valid': formik.touched.email && !formik.errors.email,                           }                       )}                        type='email'                        name='email'   &                    autoComplete='off'                   />   A                {formik.touched.email && formik.errors.email && (   B                    <div className='fv-plugins-message-container'>   G                        <span role='alert'>{formik.errors.email}</span>                       </div>                   )}               </div>   #            {/* end::Form group */}       %            {/* begin::Form group */}   )            <div className='fv-row mb-3'>   \                <label className='form-label fw-bolder text-dark fs-6 mb-0'>Password</label>                   <input   *                    placeholder='Password'   #                    type='password'   &                    autoComplete='off'   9                    {...formik.getFieldProps('password')}   $                    className={clsx(   6                        'form-control bg-transparent',                           {   \                            'is-invalid': formik.touched.password && formik.errors.password,                           },                           {   [                            'is-valid': formik.touched.password && !formik.errors.password,                           }                       )}                   />   G                {formik.touched.password && formik.errors.password && (   B                    <div className='fv-plugins-message-container'>   7                        <div className='fv-help-block'>   N                            <span role='alert'>{formik.errors.password}</span>                           </div>                       </div>                   )}               </div>   #            {/* end::Form group */}       "            {/* begin::Wrapper */}   X            <div className='d-flex flex-stack flex-wrap gap-3 fs-base fw-semibold mb-8'>                   <div />       #                {/* begin::Link */}                   {/*   J                <Link to='/auth/forgot-password' className='link-primary'>   %                    Forgot Password ?                   </Link>   */}   !                {/* end::Link */}               </div>                {/* end::Wrapper */}       !            {/* begin::Action */}   *            <div className='d-grid mb-10'>                   <button   !                    type='submit'   *                    id='kt_sign_in_submit'   3                    className='btn tp-bg-secondary'   E                    disabled={formik.isSubmitting || !formik.isValid}                   >   4                    {!loading && <span className=''>   C                        <i className="fa-solid fa-unlock" /> &nbsp;                           Entra                       </span>}   !                    {loading && (   k                        <span className='indicator-progress' style={{ display: 'block', color:"#043C50" }}>   *                            Caricamento...   h                            <span className='spinner-border spinner-border-sm align-middle ms-2'></span>                           </span>                       )}                   </button>               </div>               {/* end::Action */}       H            <div className='text-gray-500 text-center fw-semibold fs-6'>   J                <Link to='/auth/forgot-password' className='link-primary'>   4                    Password dimenticata? Clicca qui                   </Link>               </div>           </form>       )   }5�5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             d���     �                $        .min(3, 'Minimum 3 symbols')5��                          �      %               5�_�                        	    ����                                                                                                                                                                                                                                                                                                                                                             d���    �                $        .min(3, 'Minimum 3 symbols')5��                          �      %               5��