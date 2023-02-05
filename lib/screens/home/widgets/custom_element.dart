import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
class CustomElementList extends StatelessWidget {
  CustomElementList({required this.img, required this.title, required this.name, required this.address, super.key});
  String img;
  String title;
  String name;
  String address;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width(context),
          height: height(context)*0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
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
            padding: EdgeInsets.symmetric(vertical:width(context)*0.014,horizontal:
            width(context)*0.025),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.55),
                borderRadius: BorderRadius.circular(8)
            ),
            child: CustomText(text: title, color: Colors.white,size: 12,),
          ),
        ),
        Positioned(
          bottom: height(context)*0.027,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: height(context)*0.015),
                child: CustomText(text: name, color: AppColor.whiteColor,size: 14,),
              ),
              Row(
                children: [
                  Icon(Icons.location_on,color: AppColor.whiteColor,size: 20,),
                  CustomText(text: address, color: AppColor.whiteColor,size: 14,),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

}
