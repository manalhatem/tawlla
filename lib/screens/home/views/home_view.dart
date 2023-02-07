import 'package:flutter/material.dart';
import 'package:twlla/components/custom_text.dart';
import 'package:twlla/components/style/color.dart';
import 'package:twlla/components/style/size.dart';

import '../../../components/custom_text_form_field.dart';
import '../../notification/view/notification_view.dart';
import '../models/home_model.dart';
import '../widgets/bottom_sheet.dart';
import '../widgets/custom_element.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
        child: Scaffold(
         backgroundColor: AppColor.backGroundColor,
         appBar: AppBar(
           backgroundColor:AppColor.backGroundColor ,
          elevation: 0,
          leading: GestureDetector(
              onTap: (){
                modalBottomSheetMenu(context);
              },
              child: Image.asset('assets/images/sm_icon.png')),
           actions: [
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return NotificationView();
                 }));
               },
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Stack(
                   children: [
                     Icon(Icons.notifications_none_sharp,color: AppColor.purpleColor,size: 32,),
                     CircleAvatar(
                       radius: 8,
                       backgroundColor: AppColor.pinkColor,
                       child: Text('1',style: TextStyle(fontSize: 12),),
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: height(context)*0.02),
            child: Column(
              children: [
                SizedBox(height: height(context)*0.01,),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    CustomTextFormField(hint: 'عاوز تاكل فين النهارده ؟',size: 14,),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColor.purpleColor,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search_sharp,color: AppColor.whiteColor,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height(context)*0.01,),
                Container(
                  width: width(context),
                  height: height(context)*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                SizedBox(height: height(context)*0.008,),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      itemCount: resList.length,
                      itemBuilder: (context,index){
                    return CustomElementList(
                      img: resList[index].img, title: resList[index].title,
                      name: resList[index].name, address: resList[index].address,

                    );
                  }, separatorBuilder: (BuildContext context, int index){
                    return  SizedBox(height: height(context)*0.01,);
                  },),
                ),


              ],
            ),
          ),

    ));
  }
}
