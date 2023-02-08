import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
class CustomBookingRow extends StatelessWidget {
   CustomBookingRow({Key? key , required this.curindex, required this.index}) : super(key: key);
   int curindex;
   int index;

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          CustomText(size: 16,text: names[index], color:curindex==index? AppColor.blackColor:AppColor.grayColor, fontFam: FontWeight.w500,),
          SizedBox(height: height(context)*0.012,),
          Container(
            width: width(context)*0.335,
            height: 2.5,
            color:curindex==index? AppColor.pinkColor:AppColor.backGroundColor,
          )
        ] );
  }

  List<String> names=[
    'الطلبات الجديدة',
    'في انتظار الدفع',
    'الطلبات الجارية',
    'الطلبات المكتملة',
    'الطلبات الملغاة'
  ];
}
