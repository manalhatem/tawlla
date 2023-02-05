import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/custom_btn.dart';
import '../../../../components/custom_text.dart';
import '../../../../components/custom_text_form_field.dart';
import '../../../../components/style/color.dart';
import '../../../../components/style/size.dart';
import '../../rules/rule_view.dart';
import 'widgets.dart';
import '../controller/register_cubit.dart';
import '../controller/register_states.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> RegisterCubit(),
        child: BlocBuilder<RegisterCubit,RegisterStates>(builder: (context,state){
          final cubit =RegisterCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Container(
                width: double.infinity,
                height: height(context),
                decoration:const BoxDecoration(
                  image: DecorationImage(image:AssetImage('assets/images/auth_back.png'),
                      fit: BoxFit.fill),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top:height(context)*0.09,right:height(context)*0.03,left: height(context)*0.03 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.2)),
                        SizedBox(height: height(context)*.045,),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(right: width(context)*0.03),
                                    child: CustomText(text: 'الاسم الأول', color: AppColor.textColor,size: 12,),
                                  ),
                                  SizedBox(height: height(context)*.01,),
                                  SizedBox(width: width(context)*.4,child: CustomTextFormField(hint: 'منال',size: 12,),),
                                ],
                              ),
                              SizedBox(width: width(context)*0.06,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: width(context)*0.03),
                                    child: CustomText(text: 'الاسم الأخير', color: AppColor.textColor,size: 12,),
                                  ),
                                  SizedBox(height: height(context)*.01,),
                                  SizedBox(width: width(context)*.4,child: CustomTextFormField(hint: 'حاتم',size: 12,),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height(context)*.02,),
                        Padding(
                          padding:EdgeInsets.only(right: width(context)*0.03),
                          child: CustomText(text: 'البريد الإلكتروني', color: AppColor.textColor, size: 12,),
                        ),
                        SizedBox(height: height(context)*.015,),
                        CustomTextFormField(hint: 'info@tawla.com',size: 12,type: TextInputType.emailAddress,),
                        SizedBox(height: height(context)*.02,),
                        Padding(
                          padding:EdgeInsets.only(right: width(context)*0.03),
                          child: CustomText(text: 'رقم الجوال', color: AppColor.textColor, size: 12,),
                        ),
                        SizedBox(height: height(context)*.015,),
                        CustomTextFormField(hint: '01123456789',size: 12,type: TextInputType.number,),
                        SizedBox(height: height(context)*.02,),
                        CustomText(text: 'كلمة المرور', color: AppColor.textColor,),
                        SizedBox(height: height(context)*.015,),
                        CustomTextFormField(hint: '*****************',size: 12,
                          obscure: cubit.isVisible,
                          type: TextInputType.visiblePassword,
                          suffix:
                          InkWell(onTap: (){cubit.changeVisiblePass();},
                              child: cubit.isVisible?
                              Icon(Icons.visibility_off_sharp ,color: AppColor.pinkColor,):
                              Icon(Icons.remove_red_eye_outlined,color: AppColor.pinkColor,)
                          ),),
                        SizedBox(height: height(context)*.005,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return const RuleView();
                                  }));
                                },
                                child: CustomText(deco: TextDecoration.underline,
                                    text: 'الموافقة على الشروط و الأحكام', color: AppColor.textColor)),
                            Checkbox(
                                value: cubit.check,
                                activeColor: AppColor.pinkColor,
                                onChanged: (value){
                              cubit.changeCheckBox(value!);
                                })
                          ],
                        ),
                        SizedBox(height: height(context)*.005,),
                        const AlertDialode(),
                       //  CustomBtn(text: 'انشاء حساب',ontap: (){
                       // Navigator.push(context, MaterialPageRoute(builder:(context){
                       //   return  AlertDialode();
                       // } ));
                       //  },),
                        SizedBox(height: height(context)*.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: CustomText(text: ' سجل دخول الآن', color: AppColor.textColor,size: 12,)),
                            CustomText(text: 'هل تمتلك حساب؟ ', color: AppColor.textColor,size: 12,),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          );

        },)
    );
  }
}
