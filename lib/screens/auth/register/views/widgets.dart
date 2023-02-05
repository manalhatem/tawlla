import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:twlla/components/custom_btn.dart';
import 'package:twlla/components/custom_text.dart';

import '../../../../components/style/color.dart';
import '../../../../components/style/size.dart';
import '../../pin_code/view/pin_code_view.dart';
class AlertDialode extends StatelessWidget {
  const AlertDialode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
        text: 'انشاء حساب',
        color:AppColor.purpleColor,
        pressEvent: () {
          AwesomeDialog(
            context: context,
            customHeader: Image.asset('assets/images/table_logo@2x.png',width: width(context)*0.2,),
            dialogType: DialogType.question,
            animType: AnimType.rightSlide,
            headerAnimationLoop: false,
           body: Column(
             children: [
               CustomText(text: 'اين تريد إرسال كود التفعيل ؟', color:  AppColor.textColor,
               size: 12,),
               Directionality(
                 textDirection: TextDirection.rtl,
                 child: ListTile(
                   horizontalTitleGap: 1,
                   contentPadding: EdgeInsets.zero,
                   title:  Text('رقم الجوال',style: TextStyle(color:AppColor.blackColor,fontSize: 12 ),),
                   leading: Radio(
                     activeColor: AppColor.pinkColor,
                     value:'رقم الجوال',
                     groupValue: 'connect',
                     fillColor:
                     MaterialStateColor.resolveWith((states) => AppColor.pinkColor), //<-- SEE HERE
                     onChanged: ( value) {  print(value);
                     },
                   ),
                 ),
               ),
               Directionality(
                 textDirection: TextDirection.rtl,
                 child: ListTile(
                   horizontalTitleGap: 2,
                   contentPadding: EdgeInsets.zero,
                   title:  Text('البريد الإلكتروني',style: TextStyle(color:AppColor.blackColor,fontSize: 12 ),),
                   leading: Radio(
                     activeColor: AppColor.pinkColor,
                     value:'البريد الإلكتروني',
                     groupValue: 'connect',
                     fillColor:
                     MaterialStateColor.resolveWith((states) => AppColor.pinkColor), //<-- SEE HERE
                     onChanged: ( value) {
                       print(value);

                     },
                   ),
                 ),
               ),
             ],
           ),
            btnOkOnPress: () {},
            btnOk: CustomBtn(text: 'إرسال', ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PinCodeView(isPassword: false,);
              }));
            },),
          //  btnOkIcon: Icons.cancel,
          //  btnOkColor: Colors.red,
          ).show();
        },
      );
  }
}

// AnimatedButton(
// text: 'Warning Dialog With Custom BTN Style',
// pressEvent: () {
// AwesomeDialog(
// context: context,
// customHeader: Image.asset('assets/images/table_logo@2x.png',width: width(context)*0.2,),
// dialogType: DialogType.error,
// headerAnimationLoop: false,
// animType: AnimType.bottomSlide,
// title: 'اين تريد إرسال كود التفعيل ؟',
// titleTextStyle: TextStyle(color: AppColor.textColor,fontSize: 13),
// //desc: 'Dialog description here...',
// // body: ,
// btnOk: CustomBtn(text: 'إرسال',),
// btnCancel: null,
// buttonsTextStyle: const TextStyle(color: Colors.black),
// showCloseIcon: true,
// btnCancelOnPress: () {},
// btnOkOnPress: () {},
// ).show();
// },
// );