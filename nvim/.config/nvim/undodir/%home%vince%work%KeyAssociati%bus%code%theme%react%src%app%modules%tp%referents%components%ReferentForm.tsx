Vim�UnDo� ���w�2v���V7�����\����[��(B��   �       client: Referent,   &                           d\(Q    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d\(      �               �   )import React, { ReactNode } from "react";   $import { Client } from "../_models";   import clsx from 'clsx'   import * as Yup from 'yup'   "import { useFormik } from 'formik'       Sconst createInput = (formik: any, label: string, fieldName: string): ReactNode => (       <>   E        <label className='required fw-bold fs-6 mb-2'>{label}</label>               <input   #            placeholder='Full name'   0            {...formik.getFieldProps(fieldName)}               type='text'               name={fieldName}               className={clsx(   ?                'form-control form-control-solid mb-3 mb-lg-0',   X                { 'is-invalid': formik.touched[fieldName] && formik.errors[fieldName] },                   {   W                    'is-valid': formik.touched[fieldName] && !formik.errors[fieldName],                   }               )}               autoComplete='off'   *            disabled={formik.isSubmitting}   
        />   C        {formik.touched[fieldName] && formik.errors[fieldName] && (   :            <div className='fv-plugins-message-container'>   /                <div className='fv-help-block'>   H                    <span role='alert'>{formik.errors[fieldName]}</span>                   </div>               </div>   
        )}           </>   )       type ClientFormProps = {       client: Client,       operation: "edit" | "add"   $    onSave: (client: Client) => void   }       -const clientFormSchema = Yup.object().shape({        displayed_name: Yup.string()   I        .min(3, 'Il nome visualizzato deve essere di almeno 3 caratteri')   L        .max(50, 'Il nome visualizzato deve essere di massimo 50 caratteri')   7        .required('Nome visualizzato è obbligatorio'),       business_name: Yup.string()   G        .min(3, 'La Ragione sociale deve essere di almeno 3 caratteri')   J        .max(50, 'La Ragione sociale deve essere di massimo 50 caratteri')   5        .required('Ragione sociale è obbligatorio'),       vat_number: Yup.string()   A        .length(16, 'La Partita IVA deve essere di 16 caratteri')   4        .required('La Partita IVA è obbligatorio'),       fiscal_code: Yup.string()   D        .length(16, 'Il Codice fiscale deve essere di 16 caratteri')   7        .required('Il Codice fiscale è obbligatorio'),   })       Texport default function ClientForm({ client, operation, onSave }: ClientFormProps) {   4    const [clientForEdit] = React.useState<Client>({           ...client,       })           const formik = useFormik({   %        initialValues: clientForEdit,   +        validationSchema: clientFormSchema,   8        onSubmit: async (values, { setSubmitting }) => {               onSave(values)               setSubmitting(true)   
        },       })           return (   
        <>   k            <form id='kt_modal_add_client_form' className='form' onSubmit={formik.handleSubmit} noValidate>   %                {/* begin::Scroll */}                   <div   F                    className='d-flex flex-column scroll-y me-n7 pe-7'   3                    id='kt_modal_add_client_scroll'   )                    data-kt-scroll='true'   H                    data-kt-scroll-activate='{default: false, lg: true}'   4                    data-kt-scroll-max-height='auto'   M                    data-kt-scroll-dependencies='#kt_modal_add_client_header'   I                    data-kt-scroll-wrappers='#kt_modal_add_client_scroll'   1                    data-kt-scroll-offset='300px'                   >   ,                    {operation === 'edit' &&   1                        <div className="mb-sm-3">   E                            <label className="form-label">#ID</label>   "                            <input   /                                disabled={true}   +                                type="text"   K                                className="form-control form-control-solid"   1                                placeholder="#ID"                               />                           </div>                       }   1                    <div className='fv-row mb-7'>   T                        {createInput(formik, "Nome visualizzato", "displayed_name")}                       </div>       1                    <div className='fv-row mb-7'>   Q                        {createInput(formik, "Ragione Sociale", "business_name")}                       </div>       1                    <div className='fv-row mb-7'>   J                        {createInput(formik, "Partita IVA", "vat_number")}                       </div>       1                    <div className='fv-row mb-7'>   N                        {createInput(formik, "Codice Fiscale", "fiscal_code")}                       </div>                       </div>       .                <div className="modal-footer">   E                    <button type="submit" className="btn btn-primary"   ;                        data-kt-users-modal-action='submit'   \                        disabled={formik.isSubmitting || !formik.isValid || !formik.touched}                       >   O                        <span className='indicator-label'>Salva e chiudi</span>   3                        {(formik.isSubmitting) && (   A                            <span className='indicator-progress'>   3                                Please wait...{' '}   l                                <span className='spinner-border spinner-border-sm align-middle ms-2'></span>   #                            </span>                           )}                       </button>                   </div>               </form>           </>       );   }5�5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d\(=     �   <   >          4    const [clientForEdit] = React.useState<Client>({�   ;   =          Texport default function ClientForm({ client, operation, onSave }: ClientFormProps) {�   '   )          $    onSave: (client: Client) => void�   %   '              client: Client,�   $   &          type ClientFormProps = {�         �      $import { Client } from "../_models";5��       	                 3                     �    $                    �                    �    %                    �                    �    '                                        �    ;                    }                    �    ;   D                 �                    �    <   +                 �                    5�_�                     &        ����                                                                                                                                                                                                                                                                                                                                                             d\(P    �   T   V          I                    data-kt-scroll-wrappers='#kt_modal_add_client_scroll'�   S   U          M                    data-kt-scroll-dependencies='#kt_modal_add_client_header'�   O   Q          3                    id='kt_modal_add_client_scroll'�   K   M          k            <form id='kt_modal_add_client_form' className='form' onSubmit={formik.handleSubmit} noValidate>�   B   D          +        validationSchema: clientFormSchema,�   A   C          %        initialValues: clientForEdit,�   =   ?                  ...client,�   <   >          6    const [clientForEdit] = React.useState<Referent>({�   ;   =          Xexport default function ReferentForm({ client, operation, onSave }: ReferentFormProps) {�   *   ,          -const clientFormSchema = Yup.object().shape({�   '   )          &    onSave: (client: Referent) => void�   %   '   �          client: Referent,5��    %                    �                    �    '                                        �    *                    5                    �    ;   '                 �                    �    <                    �                    �    =                    
	                    �    A                    R	                    �    B                    }	                    �    K   #                 S
                    �    O   %                 E                    �    S   ?                 =                    �    T   ;                 �                    5��