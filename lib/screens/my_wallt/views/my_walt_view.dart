import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../widgets/element_walt.dart';
class MyWaltView extends StatelessWidget {
  const MyWaltView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body:Padding(
        padding:  EdgeInsets.only(top: height(context)*0.065, right:height(context)*0.01,
            left:height(context)*0.01),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: height(context)*0.005,),
                  child: CustomText(text: 'محفظتي', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 17,),
                ),
                SizedBox(width: width(context)*0.2,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 26,)),

              ],
            ),
            SizedBox(height: height(context)*0.04,),
            Image.asset('assets/images/wal.png',width: width(context)*0.55,),
            SizedBox(height: height(context)*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: 'ريال', color: AppColor.pinkColor,fontFam: FontWeight.bold,size: 16,),
                CustomText(text: '20,550', color: AppColor.pinkColor, fontFam: FontWeight.bold,size: 39,),
              ],
            ),
            Expanded(child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index){
                  return const ElementWalt();
                })),
          ],
        ),
      ) ,

    );
  }
}
