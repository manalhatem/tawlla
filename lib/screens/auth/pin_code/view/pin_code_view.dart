import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../components/custom_btn.dart';
import '../../../../components/custom_text.dart';
import '../../../../components/style/color.dart';
import '../../../../components/style/size.dart';
import '../../../home/views/home_view.dart';
import '../../new_password/view/new_pass.dart';
class PinCodeView extends StatelessWidget {
   PinCodeView({Key? key ,required this.isPassword}) : super(key: key);


  //StreamController<ErrorAnimationType>? errorController;
 bool isPassword;
  @override
  Widget build(BuildContext context) {
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
              padding:EdgeInsets.only(top:height(context)*0.03,right:height(context)*0.03,left: height(context)*0.03 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.purpleColor,)),
                  SizedBox(height: height(context)*.04,),
                  Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.3)),
                  SizedBox(height: height(context)*.06,),
                  Center(
                      child: SizedBox(
                        width: width(context)*0.73,
                        child: CustomText(text: 'من فضلك ادخل كود التفعيل المرسل إليك على رقم جوالك',
                          color: AppColor.textColor,size: 14,align: TextAlign.center,fontFam: FontWeight.w500,),
                      )
                  ),
                  SizedBox(height: height(context)*.04,),
                  CustomText(text: 'كود التفعيل', color: AppColor.textColor,),
                  SizedBox(height: height(context)*.015,),
                  PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: AppColor.purpleColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textStyle: TextStyle(color: AppColor.textColor,fontSize: 16),
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(16),
                        fieldHeight: height(context) * 0.07,
                        fieldWidth: width(context) * 0.16,
                        inactiveColor: Colors.white,
                        selectedFillColor: AppColor.whiteColor,
                        activeColor: AppColor.whiteColor,
                        activeFillColor: AppColor.whiteColor,
                        inactiveFillColor: Colors.white,
                        selectedColor: AppColor.pinkColor),
                    cursorColor: AppColor.pinkColor,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                  //  errorAnimationController: errorController,
                    //controller: cubit.pin,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      // setState(() {
                      //   currentText = value;
                      // });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      return true;
                    },
                  ),
                  SizedBox(height: height(context)*.09,),
                  CustomBtn(text: 'إرسال',ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return isPassword ?  const  NewPassword():const HomeView();
                    }));
                  },),
                  SizedBox(height: height(context)*.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: 16.0,
                        lineWidth: 3.0,
                        animation: true,
                        animationDuration: 5000,
                        percent: .8,
                        center: CustomText(text: "4S",color: AppColor.pinkColor,size: 10,),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: AppColor.purpleColor,
                      ),
                      SizedBox(width: width(context)*0.02,),
                      CustomText(text: 'إعادة إرسال الكود', color: AppColor.textColor,size: 12,)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
