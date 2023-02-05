import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
   CustomText({required this.text,
   this.size,required this.color,this.fontFam,this.align,this.deco});

  String text;
  Color color;
 FontWeight? fontFam;
  double? size;
   TextAlign? align;
   TextDecoration? deco;

   @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
      color: color, fontSize: size,fontWeight: fontFam,
        decoration: deco
    ),textAlign:align ,
    );
  }
}
