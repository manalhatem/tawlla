import 'package:flutter/material.dart';

import '../../../components/custom_btn.dart';
import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../views/editing_booking.dart';
import 'custom_de_bo_row.dart';
class CustomStackDetail extends StatelessWidget {
   CustomStackDetail({Key? key, required this.currentIndex,required this.img, required this.name}) : super(key: key);
 String name;
 String img;
 int currentIndex;
  @override
  Widget build(BuildContext context) {
    return currentIndex== 0? stackOne(context): currentIndex==1?stackTwo(context): currentIndex==2?stackThree(context):
    currentIndex==3?stackFour(context):stackFive(context);
  }

  Widget stackOne(context){
    return Column(
     children: [
      Stack(
      children: [
          SizedBox(
            width: width(context),
            height: height(context)*0.82,
            ),
          Image.asset(img, height: height(context)*.6,fit:BoxFit.fill,),
            Positioned(
              right: width(context)*0.06,
               top: width(context)*0.1,
              child: GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
                child: Image.asset('assets/images/Group 3560@3x.png', width: width(context)*0.1,))),
           Positioned(
             bottom: 0,
              left: width(context)*0.12,
              child: Container(
              height: height(context)*0.4,
              width: width(context)*0.78,
               decoration: BoxDecoration(
                color: Colors.white,
               borderRadius: BorderRadius.circular(10),
                  ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: height(context)*0.01, horizontal: width(context)*0.05),
                  child: Column(
                   children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       CustomText(text: 'ريال', color: AppColor.pinkColor,size: 12,fontFam: FontWeight.bold,),
                       CustomText(text: '50', color: AppColor.pinkColor,size: 30,fontFam: FontWeight.bold,),
                        Spacer(),
                       CustomText(text: name, color: AppColor.blackColor, fontFam: FontWeight.bold,),

                      ],),
                      CustomText(text: 'يتم كتـــــابة نص الملاحظـــــــات هنــــا يتــم كتابـــــــــــــــــة نص الملاحظات هنا يتم كتابة نص الملاحظات هنا', color: AppColor.blackColor
                      ,align: TextAlign.right,),
                     SizedBox(height: height(context)*0.012,),
                        DetailBookingRow(index: 0,),
                        SizedBox(height: height(context)*0.012,),
                        DetailBookingRow(index: 1,),
                        SizedBox(height: height(context)*0.012,),
                        DetailBookingRow(index: 2,),
                         SizedBox(height: height(context)*0.012,),
                      ],
                     ),),),),],),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width(context)*0.08, vertical: height(context)*0.02),
                      child: CustomBtn(text: 'تعديل الحجز',ontap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_){
                           return  EditingBooking(title: name,img: img,);
                    }));
                   },),),
                       Padding(
                       padding:  EdgeInsets.symmetric(horizontal: width(context)*0.08, vertical: height(context)*0.015),
                        child: OutlineCustomBtn(text: 'إلغاء الحجز',ontap: (){},),
                           ),
               ],);
}

   Widget stackTwo(context){
     return Column(
       children: [
         Stack(
           children: [
             SizedBox(
               width: width(context),
               height: height(context)*0.9,
             ),
             Image.asset(img, height: height(context)*.6,fit:BoxFit.fill,),
             Positioned(
                 right: width(context)*0.06,
                 top: width(context)*0.1,
                 child: GestureDetector(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: Image.asset('assets/images/Group 3560@3x.png', width: width(context)*0.1,))),
             Positioned(
               bottom: 0,
               left: width(context)*0.12,
               child: Container(
                 height: height(context)*0.52,
                 width: width(context)*0.78,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Padding(
                   padding:  EdgeInsets.symmetric(vertical: height(context)*0.01, horizontal: width(context)*0.05),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           CustomText(text: 'ريال', color: AppColor.pinkColor,size: 12,fontFam: FontWeight.bold,),
                           CustomText(text: '50', color: AppColor.pinkColor,size: 30,fontFam: FontWeight.bold,),
                           Spacer(),
                           CustomText(text: name, color: AppColor.blackColor, fontFam: FontWeight.bold,),

                         ],),
                       CustomText(text: 'يتم كتـــــابة نص الملاحظـــــــات هنــــا يتــم كتابـــــــــــــــــة نص الملاحظات هنا يتم كتابة نص الملاحظات هنا', color: AppColor.blackColor
                         ,align: TextAlign.right,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 0,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 1,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 2,),
                       SizedBox(height: height(context)*0.012,),
                       Align(
                           alignment: Alignment.topRight,
                           child: CustomText(text: 'اختر طريقة الدفع', color: AppColor.blackColor, fontFam: FontWeight.bold,)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           SizedBox(
                             width: width(context)*0.3,
                             child: Directionality(
                               textDirection: TextDirection.rtl,
                               child: ListTile(
                                 horizontalTitleGap: 1,
                                 contentPadding: EdgeInsets.zero,
                                 title:  Text('محفظتي',style: TextStyle(color:AppColor.blackColor,fontSize: 12 ),),
                                 leading: Radio(
                                   activeColor: AppColor.pinkColor,
                                   value:'محفظتي',
                                   groupValue: 'connect',
                                   fillColor:
                                   MaterialStateColor.resolveWith((states) => AppColor.pinkColor), //<-- SEE HERE
                                   onChanged: ( value) {  print(value);
                                   },
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(
                           width: width(context)*0.3,
                           child: Directionality(
                             textDirection: TextDirection.rtl,
                             child: ListTile(
                               horizontalTitleGap: 1,
                               contentPadding: EdgeInsets.zero,
                               title:  Text('أونلاين',style: TextStyle(color:AppColor.blackColor,fontSize: 12 ),),
                               leading: Radio(
                                 activeColor: AppColor.pinkColor,
                                 value:'أونلاين',
                                 groupValue: 'connect',
                                 fillColor:
                                 MaterialStateColor.resolveWith((states) => AppColor.pinkColor), //<-- SEE HERE
                                 onChanged: ( value) {  print(value);
                                 },
                               ),
                             ),
                           ),
                         ),
                       ],),


                     ],
                   ),),),),],),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: width(context)*0.08, vertical: height(context)*0.02),
           child: CustomBtn(text: 'الدفع',ontap: (){

           },),),

       ],);
   }

   Widget stackThree(context){
     return Column(
       children: [
         Stack(
           children: [
             SizedBox(
               width: width(context),
               height: height(context)*0.82,
             ),
             Image.asset(img, height: height(context)*.6,fit:BoxFit.fill,),
             Positioned(
                 right: width(context)*0.06,
                 top: width(context)*0.1,
                 child: GestureDetector(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: Image.asset('assets/images/Group 3560@3x.png', width: width(context)*0.1,))),
             Positioned(
               bottom: 0,
               left: width(context)*0.1,
               child: Container(
                 height: height(context)*0.49,
                 width: width(context)*0.8,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Padding(
                   padding:  EdgeInsets.symmetric(vertical: height(context)*0.01, horizontal: width(context)*0.05),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           CustomText(text: 'ريال', color: AppColor.pinkColor,size: 12,fontFam: FontWeight.bold,),
                           CustomText(text: '50', color: AppColor.pinkColor,size: 30,fontFam: FontWeight.bold,),
                           Spacer(),
                           CustomText(text: name, color: AppColor.blackColor, fontFam: FontWeight.bold,),

                         ],),
                       CustomText(text: 'يتم كتـــــابة نص الملاحظـــــــات هنــــا يتــم كتابـــــــــــــــــة نص الملاحظات هنا يتم كتابة نص الملاحظات هنا', color: AppColor.blackColor
                         ,align: TextAlign.right,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 0,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 1,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 2,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 3,),
                       SizedBox(height: height(context)*0.012,),
                     ],
                   ),),),),],),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: width(context)*0.08, vertical: height(context)*0.01),
           child: CustomBtn(text: ' تأكيد انتهاء الحجز',ontap: (){
           },),),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: width(context)*0.08, vertical: height(context)*0.01),
           child: OutlineCustomBtn(text: 'إلغاء الحجز',ontap: (){},),
         ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: width(context)*0.06, vertical: height(context)*0.01),
           child: CustomText(text: 'لا تتأخر عن معاد حجزك! يحق للمطعم إلغاء الحجز في حالة تأخرك عن موعد الحجز لمدة 30 دقيقة', color: AppColor.grayColor,
           align: TextAlign.right,fontFam: FontWeight.w500,),
         )
       ],);
   }

   Widget stackFour(context){
     return Column(
       children: [
         Stack(
           children: [
             SizedBox(
               width: width(context),
               height: height(context)*0.82,
             ),
             Image.asset(img, height: height(context)*.6,fit:BoxFit.fill,),
             Positioned(
                 right: width(context)*0.06,
                 top: width(context)*0.1,
                 child: GestureDetector(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: Image.asset('assets/images/Group 3560@3x.png', width: width(context)*0.1,))),
             Positioned(
     bottom: 0,
     left: width(context)*0.1,
     child: Container(
     height: height(context)*0.49,
     width: width(context)*0.8,
     decoration: BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.circular(10),
     ),
     child: Padding(
     padding:  EdgeInsets.symmetric(vertical: height(context)*0.01, horizontal: width(context)*0.05),
     child: Column(
     children: [
     Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: [
     CustomText(text: 'ريال', color: AppColor.pinkColor,size: 12,fontFam: FontWeight.bold,),
     CustomText(text: '50', color: AppColor.pinkColor,size: 30,fontFam: FontWeight.bold,),
     Spacer(),
     CustomText(text: name, color: AppColor.blackColor, fontFam: FontWeight.bold,),

     ],),
     CustomText(text: 'يتم كتـــــابة نص الملاحظـــــــات هنــــا يتــم كتابـــــــــــــــــة نص الملاحظات هنا يتم كتابة نص الملاحظات هنا', color: AppColor.blackColor
     ,align: TextAlign.right,),
     SizedBox(height: height(context)*0.012,),
     DetailBookingRow(index: 0,),
     SizedBox(height: height(context)*0.012,),
     DetailBookingRow(index: 1,),
     SizedBox(height: height(context)*0.012,),
     DetailBookingRow(index: 2,),
     SizedBox(height: height(context)*0.012,),
     DetailBookingRow(index: 3,),
     SizedBox(height: height(context)*0.012,),
     ],
     ),),),),],),
       ],);
   }

   Widget stackFive(context){
     return Column(
       children: [
         Stack(
           children: [
             SizedBox(
               width: width(context),
               height: height(context)*0.82,
             ),
             Image.asset(img, height: height(context)*.6,fit:BoxFit.fill,),
             Positioned(
                 right: width(context)*0.06,
                 top: width(context)*0.1,
                 child: GestureDetector(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: Image.asset('assets/images/Group 3560@3x.png', width: width(context)*0.1,))),
             Positioned(
               bottom: 0,
               left: width(context)*0.1,
               child: Container(
                 height: height(context)*0.49,
                 width: width(context)*0.8,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Padding(
                   padding:  EdgeInsets.symmetric(vertical: height(context)*0.01, horizontal: width(context)*0.05),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           CustomText(text: 'ريال', color: AppColor.pinkColor,size: 12,fontFam: FontWeight.bold,),
                           CustomText(text: '50', color: AppColor.pinkColor,size: 30,fontFam: FontWeight.bold,),
                           Spacer(),
                           CustomText(text: name, color: AppColor.blackColor, fontFam: FontWeight.bold,),

                         ],),
                       CustomText(text: 'يتم كتـــــابة نص الملاحظـــــــات هنــــا يتــم كتابـــــــــــــــــة نص الملاحظات هنا يتم كتابة نص الملاحظات هنا', color: AppColor.blackColor
                         ,align: TextAlign.right,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 0,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 1,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 2,),
                       SizedBox(height: height(context)*0.012,),
                       DetailBookingRow(index: 3,),
                       SizedBox(height: height(context)*0.012,),
                     ],
                   ),),),)

             ,],),
         Container(
           margin: EdgeInsets.symmetric(horizontal: width(context)*0.089,vertical:height(context)*0.015 ),
           decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(10)
           ),
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: width(context)*0.06, vertical: height(context)*0.03),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 CustomText(text: 'سبب إلغاء الطلب', color: AppColor.blackColor, fontFam: FontWeight.bold,),
                 CustomText(
                   align: TextAlign.right,
                   text: 'تم إلغاء الطلب من قبل صاحب مطعم ديري كوين بسبب تأخرك لمدة 30 دقيقة عن موعد الحجز', color: AppColor.grayColor,),
               ],
             ),
           ),
         ),

         
       ],);
   }
}
