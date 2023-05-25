Vim�UnDo� #���Rro�� �ڰ�G�x�āC����#   �                                   dJ�P    _�                             ����                                                                                                                                                                                                                                                                                                                                                             dJ�w    �   �   �          ?                                    facultyLeads.map((fl) => ({�   �   �          F                                placeholder="Select your faculty lead"�   �   �          3                        {facultyLeads?.length > 0 ?�   �   �          O                                    message: 'Please input your faculty lead!',�   �   �          2                            name="faculty_lead_id"�   �   �          0                            label="Faculty Lead"�   G   I          .    console.log("facultyLeads", facultyLeads);�   D   F                  getFacultyLeads();�   @   B          '        setFacultyLeads(response.data);�   9   ;          =        const response = await FlAFService.getFacultyLeads();�   8   :          )    const getFacultyLeads = async () => {�         �      ?    const [facultyLeads, setFacultyLeads] = React.useState([]);5��                        �                    �       #                 �                    �    8                    2                    �    9   6                 |                    �    @                    b                    �    D                    �                    �    G                    �                    �    G   '                 �                    �    �   ,                 S                    �    �   +                 �                    �    �   I                 M                     �    �   !                 �                     �    �   B                 H!                    �    �   ,                 �"                    5�_�                     �   #    ����                                                                                                                                                                                                                                                                                                                                                             dJ�O    �               �   )import React, { useEffect } from 'react';   Cimport { Col, Row, Select, Button, Form, Input, Spin } from 'antd';   3import genders from '@iso/pages/constants/Genders';   ;import tshirtSizes from '@iso/pages/constants/TShirtSizes';   Eimport * as FlAFService from '@iso/pages/infrastructure/FlAFService';       const style = {     centeredVContent: {       display: 'flex',       flexDirection: 'column',       justifyContent: 'center',       height: '100%',     },   };       const layout = {   V  labelCol: { xs: { span: 24 }, sm: { span: 24 }, md: { span: 24 }, lg: { span: 8 } },   X  wrapperCol: { xs: { span: 24 }, sm: { span: 24 }, md: { span: 24 }, lg: { span: 16 } }   }       )export default function MainForm(props) {   &    const { applicationForm } = props;   "    const [form] = Form.useForm();   <    const [submitted, setSubmitted] = React.useState(false);   >    const [submitting, setSubmitting] = React.useState(false);   3    const [errors, setErrors] = React.useState({});   =    const [facultyLeds, setFacultyLeds] = React.useState([]);       D    const [isGenderOther, setIsGenderOther] = React.useState(false);       ,    const adaptInitialValues = (values) => {           return values;       }   (    const onFinish = async (values) => {           setSubmitting(true);   f        const response = await FlAFService.saveFlApplicationForm({id: applicationForm.id, ...values});   !        if (!response?.success) {   A            console.log('FlApplicationForm - Failed:', response);   #            if (response?.errors) {   +                setErrors(response.errors);               }   	        }           setSubmitting(false);       };       +    const onFinishFailed = (errorInfo) => {   *        console.log('Failed:', errorInfo);       };       (    const onGenderChange = (gender) => {   !        if (gender === "Other") {   *            return setIsGenderOther(true);   	        }   '        return setIsGenderOther(false);       };       (    const getFacultyLeds = async () => {   <        const response = await FlAFService.getFacultyLeds();   !        if (!response?.success) {   A            console.log('FlApplicationForm - Failed:', response);   #            if (response?.errors) {   +                setErrors(response.errors);               }   	        }   &        setFacultyLeds(response.data);       };           useEffect(() => {           getFacultyLeds();       }, []);       ,    console.log("facultyLeds", facultyLeds);       return (   1            <Row justify="center" align="middle">                   <Col span={12}>   #                    {submitted && (                           <div>   D                            <h1>Thank you for your application!</h1>   <                            <p>We will contact you soon.</p>                           </div>                       )}                       <Form   !                        labelWrap   #                        form={form}   ,                        disabled={submitted}   2                        name="fl_application_form"   #                        {...layout}   K                        initialValues={adaptInitialValues(applicationForm)}   +                        onFinish={onFinish}   7                        onFinishFailed={onFinishFailed}   )                        autoComplete="on"                       >   "                        <Form.Item   .                            label="First Name"   '                            name="name"   $                            rules={[   !                                {   3                                    required: true,   G                                    message: 'Please input your name!',   "                                },                               ]}                           >   %                            <Input />   $                        </Form.Item>       "                        <Form.Item   -                            label="Last name"   *                            name="surname"   $                            rules={[   !                                {   3                                    required: true,   L                                    message: 'Please input your last name!',   "                                },                               ]}                           >   %                            <Input />   $                        </Form.Item>       "                        <Form.Item   1                            label="Email address"   (                            name="email"   %                            rules={[{   .                                type: 'email',   /                                required: true,   J                                message: "Please enter your email address"                               }]}                           >   "                            <Input                               />   $                        </Form.Item>       "                        <Form.Item   *                            label="Gender"   )                            name="gender"   $                            rules={[   !                                {   3                                    required: true,   I                                    message: 'Please input your gender!',   "                                },                               ]}                           >   #                            <Select   @                                placeholder="Select your gender"   ;                                optionFilterProp="children"   @                                filterOption={(input, option) =>   e                                    (option?.label ?? '').toLowerCase().includes(input.toLowerCase())   !                                }   9                                onChange={onGenderChange}   )                                options={   >                                    genders.map((gender) => ({   6                                        label: gender,   6                                        value: gender,   '                                    }))   $                                } />   $                        </Form.Item>                           {   ,                            isGenderOther &&   &                            <Form.Item   .                                label="Gender"   2                                name="genderOther"   (                                rules={[   %                                    {   7                                        required: true,   M                                        message: 'Please input your gender!',   &                                    },   #                                ]}>   )                                <Input />   (                            </Form.Item>                           }       "                        <Form.Item   0                            label="Phone Number"   (                            name="phone"   $                            rules={[   !                                {   3                                    required: true,   G                                    message: 'Please input your cell!',   "                                },                               ]}                           >   %                            <Input />   $                        </Form.Item>       "                        <Form.Item   0                            label="T-Shirt Size"   .                            name="tshirt_size"   $                            rules={[   !                                {   3                                    required: true,   O                                    message: 'Please input your t-shirt size!',   "                                },                               ]}                           >   #                            <Select   F                                placeholder="Select your t-shirt size"   ;                                optionFilterProp="children"   @                                filterOption={(input, option) =>   e                                    (option?.label ?? '').toLowerCase().includes(input.toLowerCase())   !                                }   )                                options={   @                                    tshirtSizes.map((size) => ({   4                                        label: size,   4                                        value: size,   '                                    }))   $                                } />   $                        </Form.Item>       "                        <Form.Item   /                            label="Faculty Led"   1                            name="faculty_led_id"   $                            rules={[   !                                {   3                                    required: true,   N                                    message: 'Please input your faculty led!',   "                                },                               ]}                           >   2                        {facultyLeds?.length > 0 ?   #                            <Select   E                                placeholder="Select your faculty led"   ;                                optionFilterProp="children"   @                                filterOption={(input, option) =>   e                                    (option?.label ?? '').toLowerCase().includes(input.toLowerCase())   !                                }   )                                options={   >                                    facultyLeds.map((fl) => ({   8                                        label: fl?.name,   6                                        value: fl?.id,   '                                    }))   &                                } /> :   (                                <Spin />                           }   $                        </Form.Item>   "                        <Form.Item   )                            wrapperCol={{   *                                offset: 8,   )                                span: 16,                               }}                           >   >                            <Row justify="end" align="middle">   3                                <Col justify="end">   M                                    <Button type="primary" htmlType="submit">   .                                        Submit   -                                    </Button>   &                                </Col>   "                            </Row>   $                        </Form.Item>                       </Form>                   </Col>               </Row>       );   }5�5��