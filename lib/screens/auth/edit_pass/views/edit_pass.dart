import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/custom_btn.dart';
import '../../../../components/custom_text.dart';
import '../../../../components/custom_text_form_field.dart';
import '../../../../components/style/color.dart';
import '../../../../components/style/size.dart';
import '../../login/controller/login_cubit.dart';
import '../../login/controller/login_states.dart';
class EditPassword extends StatelessWidget {
  const EditPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> LoginCubit(),
        child: BlocBuilder<LoginCubit,LoginStates>(builder: (context,state){
          final cubit =LoginCubit.get(context);
          return  Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top:height(context)*0.03,right:height(context)*0.03,left: height(context)*0.03 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:EdgeInsets.only(top: height(context)*0.005,),
                            child: CustomText(text: 'تغيير كلمة المرور', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 16,),
                          ),
                          SizedBox(width: width(context)*0.14,),
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 24,)),

                        ],
                      ),
                      SizedBox(height: height(context)*.04,),
                      Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.28)),
                      SizedBox(height: height(context)*.06,),
                      CustomText(text: 'كملة المرور الحالية', color: AppColor.textColor,fontFam: FontWeight.w500,),
                      SizedBox(height: height(context)*.015,),
                      CustomTextFormField(hint: '**************',size: 12,max: 1,
                        obscure: cubit.isVisible,
                        type: TextInputType.visiblePassword,
                        suffix:
                        InkWell(onTap: (){cubit.changeVisiblePass();},
                            child: cubit.isVisible?
                            Icon(Icons.visibility_off_sharp ,color: AppColor.pinkColor,):
                            Icon(Icons.remove_red_eye_outlined,color: AppColor.pinkColor,)
                        ),),
                      SizedBox(height: height(context)*.04,),
                      CustomText(text: 'كلمة المرور الجديدة', color: AppColor.textColor,fontFam: FontWeight.w500,),
                      SizedBox(height: height(context)*.015,),
                      CustomTextFormField(hint: '**************',size: 12,max: 1,
                        obscure: cubit.isVisible,
                        type: TextInputType.visiblePassword,
                        suffix:
                        InkWell(onTap: (){cubit.changeVisiblePass();},
                            child: cubit.isVisible?
                            Icon(Icons.visibility_off_sharp ,color: AppColor.pinkColor,):
                            Icon(Icons.remove_red_eye_outlined,color: AppColor.pinkColor,)
                        ),),
                      SizedBox(height: height(context)*.09,),
                      CustomBtn(text: 'حفظ التعديل ',ontap: (){Navigator.pop(context);},weightt: FontWeight.bold,),
                    ],
                  ),
                ),
              ),
            ),
          );

        }));
  }
}
