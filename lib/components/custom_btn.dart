import 'package:flutter/material.dart';

import 'custom_text.dart';
import 'style/color.dart';
import 'style/size.dart';
class CustomBtn extends StatelessWidget {
   CustomBtn({required this.text,this.ontap, this.weightt}) ;

  String text;
  void Function()? ontap;
   FontWeight? weightt;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:width(context)*0.03, vertical:width(context)*0.04 ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color:AppColor.purpleColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: CustomText(text:text, color: AppColor.whiteColor, fontFam: weightt,
          size: 15,),
      ),
    );
  }
}

class OutlineCustomBtn extends StatelessWidget {
  OutlineCustomBtn({required this.text,this.ontap, this.weightt}) ;

  String text;
  void Function()? ontap;
  FontWeight? weightt;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(width(context)*0.03),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColor.purpleColor)
        ),
        child: CustomText(text:text, color: AppColor.purpleColor, fontFam: weightt,
          size: 15,),
      ),
    );
  }
}
