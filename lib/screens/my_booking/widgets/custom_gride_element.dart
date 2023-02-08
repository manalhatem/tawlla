import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../views/detail_booking.dart';
class CustomElementGride extends StatelessWidget {
  CustomElementGride({required this.currentIndex,required this.img, required this.title, required this.name, required this.address, super.key});
  String img;
  String title;
  String name;
  String address;
  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return DetailBooking(img: img, name: name,currentIndex: currentIndex,);
        }));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:  DecorationImage(
                  image: AssetImage(img,),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Positioned(
            top: height(context)*0.025,
            left: height(context)*0.025,
            child: Container(
              padding: EdgeInsets.only(top:width(context)*0.019,
                  bottom:width(context)*0.012,right:
              width(context)*0.025,left: width(context)*0.025 ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: CustomText(text: title, color: AppColor.whiteColor,size: 16,fontFam: FontWeight.w500,),
            ),
          ),
          Positioned(
            bottom: height(context)*0.027,
            right: width(context)*0.01,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: height(context)*0.015),
                  child: CustomText(text: name, color: AppColor.whiteColor,size: 14,fontFam: FontWeight.bold,),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: height(context)*0.01),
                  child: Row(
                    children: [
                      Icon(Icons.access_time,color: AppColor.whiteColor,size: 17,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: CustomText(text: ' PM ', color: AppColor.whiteColor,size: 13,),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(top: 5.0),
                        child: CustomText(text: address, color: AppColor.whiteColor,size: 13,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
