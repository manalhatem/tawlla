import 'dart:math';

import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../../home/models/home_model.dart';
import '../../home/widgets/custom_element.dart';
class FavouritesView extends StatelessWidget {
  const FavouritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: AppColor.backGroundColor,
          body:Padding(
           padding:  EdgeInsets.symmetric(vertical: height(context)*0.065, horizontal:height(context)*0.01 ),
               child: Column(
                  children: [
                     Row(
                       children: [
                         Transform.rotate(
                           angle: pi,
                           child: IconButton(onPressed: (){
                             Navigator.pop(context);
                           }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 30,)),
                         ),
                         SizedBox(width: width(context)*0.2,),
                         Padding(
                          padding:EdgeInsets.only(top: height(context)*0.005,),
                          child: CustomText(text: 'المفضله', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 19,),
                       ),

      ],
      ),
                     Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: resList.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding:  EdgeInsets.symmetric(horizontal: width(context)*0.01),
                            child: CustomElementList(
                              img: resList[index].img, title: resList[index].title,
                              name: resList[index].name, address: resList[index].address,
                            ),
                          );
                        }, separatorBuilder: (BuildContext context, int index){
                        return  SizedBox(height: height(context)*0.01,);
                      },),
                    ),
      ]))),
    );
  }
}
