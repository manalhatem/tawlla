import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../widgets/element_notification.dart';
class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body:Padding(
        padding:  EdgeInsets.symmetric(vertical: height(context)*0.065, horizontal:height(context)*0.01 ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: height(context)*0.005,),
                  child: CustomText(text: 'الإشعارات', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 21,),
                ),
                SizedBox(width: width(context)*0.2,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 30,)),

              ],
            ),
           Expanded(child: ListView.builder(
             padding: EdgeInsets.zero,
             physics: BouncingScrollPhysics(),
               itemCount: 10,
               itemBuilder: (context, index){
             return const ElementNotification();
           })),
          ],
        ),
      ) ,

    );
  }
}
