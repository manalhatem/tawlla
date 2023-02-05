import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twlla/screens/auth/login/controller/login_states.dart';

import '../../../../components/custom_btn.dart';
import '../../../../components/custom_text.dart';
import '../../../../components/custom_text_form_field.dart';
import '../../../../components/style/color.dart';
import '../../../../components/style/size.dart';
import '../../change_pass/view/change_pass.dart';
import '../../register/views/register_view.dart';
import '../controller/login_cubit.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> LoginCubit(),
      child: BlocBuilder<LoginCubit,LoginStates>(builder: (context,state){
        final cubit =LoginCubit.get(context);
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
                  padding:EdgeInsets.only(top:height(context)*0.13,right:height(context)*0.03,left: height(context)*0.03 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Hero(
                          tag: 'img1',
                          child: Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.3))),
                      SizedBox(height: height(context)*.04,),
                      CustomText(text: 'رقم الجوال/ البريد الإلكتروني', color: AppColor.textColor,),
                      SizedBox(height: height(context)*.015,),
                      CustomTextFormField(hint: '01123456789',size: 12,),
                      SizedBox(height: height(context)*.015,),
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
                      SizedBox(height: height(context)*.015,),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                          child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const ChangePassword();
                                }));
                              },
                              child: CustomText(text: 'هل نسيت كلمة المرور ؟', color: AppColor.textColor,size: 10,))),
                      SizedBox(height: height(context)*.04,),
                      CustomBtn(text: 'تسجيل دخول',ontap: (){},),
                      SizedBox(height: height(context)*.04,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const RegisterView();
                                }));
                              },
                              child: CustomText(text: ' سجل الآن', color: AppColor.textColor,size: 12,)),
                          CustomText(text: 'لا تمتلك حساب؟', color: AppColor.textColor,size: 12,),
                        ],
                      ),
                      SizedBox(height: height(context)*.07,),
                      GestureDetector(
                          onTap: (){},
                          child: Center(child: CustomText(text: 'تخطي', color: AppColor.textColor,size: 12,))),


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
