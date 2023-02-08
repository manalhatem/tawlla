import 'package:flutter/material.dart';
import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
class ElementWalt extends StatelessWidget {
  const ElementWalt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsets.only(top:height(context)*0.02,right: height(context)*0.01,left:height(context)*0.01  ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical:height(context)*0.03,horizontal: height(context)*0.02 ),
        decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: '03:15 PM', color: AppColor.grayColor),
                SizedBox(width: width(context)*0.013,),
                Image.asset('assets/images/g_walt.png', width: width(context)*0.05,),
              ],
            ),
            SizedBox(height: height(context)*0.01,),
            CustomText(text: 'سحب 500 ريال من رصيدك لطلب الحجز الخاص بك رقم 131414', color: AppColor.blackColor,align: TextAlign.end,)
          ],
        ),
      ),
    );
  }
}
