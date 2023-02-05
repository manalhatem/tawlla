import 'package:flutter/material.dart';

import 'custom_text.dart';
import 'style/color.dart';
import 'style/size.dart';
class CustomBtn extends StatelessWidget {
   CustomBtn({required this.text,this.ontap}) ;

  String text;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(width(context)*0.025),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color:AppColor.purpleColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: CustomText(text:text, color: AppColor.whiteColor,
          size: 15,),
      ),
    );
  }
}
