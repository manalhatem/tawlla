import 'package:flutter/material.dart';
import 'package:twlla/components/style/color.dart';

import '../../../../components/custom_btn.dart';
import '../../../../components/custom_text.dart';
import '../../../../components/custom_text_form_field.dart';
import '../../../../components/style/size.dart';
import '../../pin_code/view/pin_code_view.dart';
class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              padding:EdgeInsets.only(top:height(context)*0.03,right:height(context)*0.03,left: height(context)*0.03 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.purpleColor,)),
                  SizedBox(height: height(context)*.06,),
                  Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.3)),
                  SizedBox(height: height(context)*.06,),
                  Center(
                    child: SizedBox(
                      width: width(context)*0.73,
                      child: CustomText(text: 'من فضلك ادخل رقم جوالك حتي تتمكن من تغيير كلمة المرور الخاصة بك',
                      color: AppColor.textColor,size: 14,align: TextAlign.center,fontFam: FontWeight.w500,),
                    )
                  ),
                  SizedBox(height: height(context)*.04,),
                  CustomText(text: 'رقم الجوال', color: AppColor.textColor,),
                  SizedBox(height: height(context)*.015,),
                  CustomTextFormField(hint: '01123456789',size: 12,type: TextInputType.number,),
                  SizedBox(height: height(context)*.09,),
                  CustomBtn(text: 'إرسال',ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return  PinCodeView(isPassword: true,);
                    }));
                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
