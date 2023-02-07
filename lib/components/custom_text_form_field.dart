import 'package:flutter/material.dart';

import 'style/color.dart';
import 'style/size.dart';
class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key,this.fill, this.max, required this.hint,this.suffix,this.size,this.obscure=false,this.type});
  String hint;
   Widget? suffix;
   double? size;
   bool obscure;
   TextInputType? type;
   Color? fill;
   int? max;




  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        cursorColor: AppColor.pinkColor,
        style: TextStyle(color: AppColor.textColor,fontSize: size) ,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: width(context)*.05),
          hintText: hint,
          hintStyle: TextStyle(color: AppColor.textColor,fontSize: size),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: AppColor.whiteColor
              )
          ),
          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: AppColor.pinkColor
              )
          ) ,
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: AppColor.whiteColor
              )
          ) ,
          errorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: AppColor.whiteColor
              )
          )  ,
          fillColor: fill ?? AppColor.whiteColor,
          filled: true,
          suffixIcon: suffix,
        ),
        obscureText: obscure,
        keyboardType: type,
        maxLines: max,
      ),
    );
  }
}
