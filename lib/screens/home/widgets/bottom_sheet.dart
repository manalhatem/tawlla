import 'package:flutter/material.dart';
import 'package:twlla/components/custom_text.dart';
import 'package:twlla/components/style/color.dart';
import 'package:twlla/components/style/size.dart';

import '../../edite_profile/views/edit_profile_view.dart';
import 'row_bottom.dart';
void modalBottomSheetMenu(context){
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (builder){
        return SizedBox(
            height: height(context)*0.7,
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: height(context)*0.02,horizontal:height(context)*0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const EditProfile();
                        }));
                      }, icon: Icon(Icons.settings,color:AppColor.purpleColor ,size: 28,)),
                      const Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(right: height(context)*0.007),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right:height(context)*0.004 ),
                              child: CustomText(text: 'منال حاتم', color: AppColor.blackColor,size: 18,fontFam: FontWeight.w500,),
                            ),
                            Row(
                              children: [
                                CustomText(text: '01066377262 ', color: AppColor.textColor,size: 11,),
                                Icon(Icons.phone,size: 13,color: AppColor.textColor,),
                              ],
                            ),

                          ],
                        ),
                      ),
                      const CircleAvatar(
                       radius: 28,
                        backgroundImage:AssetImage('assets/images/profile.jpg'),
                      ),

                    ],
                  ),
                  SizedBox(height: height(context)*0.02,),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                        itemCount: rowModel.length,
                        itemBuilder: (context,index){
                      return RowBottom(text: rowModel[index].text,icon: rowModel[index].icon,
                      select: rowModel[index].select,);
                    }),
                  ),

                ],
              ),
            ),
        );
      }
  );
}