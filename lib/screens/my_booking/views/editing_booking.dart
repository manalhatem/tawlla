import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/custom_btn.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_text_form_field.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../../confirm_book/controller/confirm_booking_cubit.dart';
import '../../confirm_book/controller/confirm_booking_states.dart';
import '../../confirm_book/widgets/data_wheel.dart';
class EditingBooking extends StatelessWidget {
   EditingBooking({Key? key, required this.title, required this.img}) : super(key: key);
  String title;
   String img;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ConfirmBookingCubit(),
        child: BlocBuilder<ConfirmBookingCubit, ConfiromBookingStates>(
            builder: (context, state) {
              final cubit = ConfirmBookingCubit.get(context);
              return
                Scaffold(
                    backgroundColor: AppColor.backGroundColor,
                    body:Padding(
                        padding:  EdgeInsets.only(top: height(context)*0.065, right:height(context)*0.01,left:height(context)*0.01,  ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:EdgeInsets.only(top: height(context)*0.005,),
                                      child: CustomText(text: 'تعديل الحجز', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 17,),
                                    ),
                                    SizedBox(width: width(context)*0.18,),
                                    IconButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 30,)),

                                  ],
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      width: width(context),
                                      height: height(context)*0.83,
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 2,
                                      left: 2,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: width(context)*.05),
                                        padding: EdgeInsets.symmetric(horizontal: width(context)*.03),
                                        width: width(context),
                                        // height: height(context)*0.85,
                                        color: AppColor.whiteColor,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: height(context)*0.06,),
                                            CustomText(text: 'موعد الحجز', color: AppColor.blackColor, fontFam: FontWeight.bold,),
                                            SizedBox(
                                                height: height(context)*0.29,
                                                child: WidgetPage()),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal: width(context)*0.045, vertical:width(context)*0.01 ),
                                                  decoration: BoxDecoration(
                                                      color: AppColor.backGroundColor,
                                                      borderRadius: BorderRadius.circular(18)
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                          onTap:(){
                                                            cubit.decreaseNum();
                                                          },
                                                          child: Padding(
                                                            padding:  const EdgeInsets.only(bottom: 16),
                                                            child: Icon(Icons.minimize, color: AppColor.grayColor,),
                                                          )),
                                                      SizedBox(width: width(context)*0.03,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 4),
                                                        child: CustomText(text: '${cubit.num}', color: AppColor.grayColor, size: 18,fontFam: FontWeight.bold,),
                                                      ),
                                                      SizedBox(width: width(context)*0.03,),
                                                      GestureDetector(
                                                          onTap:(){
                                                            cubit.increaseNum();
                                                          },
                                                          child: Icon(Icons.add,color: AppColor.grayColor)),
                                                    ],
                                                  ),
                                                ),
                                                const Spacer(),
                                                CustomText(text: 'عدد الأفراد', color: AppColor.blackColor, fontFam: FontWeight.bold,),

                                              ],
                                            ),
                                            SizedBox(height: height(context)*0.015,),
                                            CustomText(text: 'ملاحظات', color: AppColor.blackColor, fontFam: FontWeight.bold,),
                                            SizedBox(height: height(context)*0.015,),
                                            CustomTextFormField(hint: 'اكتب النص هنا', fill: AppColor.backGroundColor, max: 4,),
                                            SizedBox(height: height(context)*0.015,),
                                            const Divider(thickness: 1.5,),
                                            SizedBox(height: height(context)*0.015,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                CustomText(text: 'ريال', color: AppColor.pinkColor,size: 12,fontFam: FontWeight.bold,),
                                                CustomText(text: '50', color: AppColor.pinkColor,size: 34,fontFam: FontWeight.bold,),
                                                const Spacer(),
                                                CustomText(text:title , color: AppColor.blackColor, size: 14,fontFam: FontWeight.bold,),
                                                const Spacer(),
                                                CircleAvatar(
                                                  radius: width(context)*0.08,
                                                  backgroundImage: AssetImage(img),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: height(context)*0.015,),

                                          ],

                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: width(context)*0.36,
                                        child: Image.asset('assets/images/logoo@3x.png', width: width(context)*0.25,)),

                                  ],
                                ),
                                SizedBox(height: height(context)*0.02,),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: width(context)*0.04),
                                  child: CustomBtn(text: 'حفظ التعديل',ontap: (){
                                    Navigator.pop(context);
                                  },),

                                ),
                                SizedBox(height: height(context)*0.02,),


                              ]),
                        )));

            }));
  }
}
