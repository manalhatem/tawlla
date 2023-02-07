import 'package:flutter/material.dart';
import 'package:twlla/components/custom_text.dart';

import '../../../components/custom_btn.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../../home/views/home_view.dart';
class SureBooking extends StatelessWidget {
  const SureBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Column(
        children: [
          SizedBox(height: height(context)*0.15,),
          Image.asset('assets/images/co_sure.png', width: width(context)*0.8,),
          SizedBox(height: height(context)*0.07,),
          CustomText(text: 'تم إرسال طلبك بنجاح إلى صاحب المطعم', color: AppColor.textColor, fontFam: FontWeight.bold,),
          SizedBox(height: height(context)*0.09,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width(context)*0.04),
            child: CustomBtn(text: 'العودة للرئيسية',ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const HomeView();
              }));
            },),
          )

        ],
      ),
    ));
  }
}
