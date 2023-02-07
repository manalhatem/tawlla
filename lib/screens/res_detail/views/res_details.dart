import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:twlla/components/custom_text.dart';
import 'package:twlla/components/style/color.dart';
import '../../../components/custom_btn.dart';
import '../../confirm_book/view/confirm_booking.dart';
import '../controller/res_cubit.dart';
import '../controller/res_states.dart';
import '../widgets/res_detial_row.dart';
import '/components/style/size.dart';
class ResDetails extends StatelessWidget {
   ResDetails({Key? key, required this.img, required this.address, required this.name}) : super(key: key);

  String img;
  String name;
  String address;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ResDetailCubit(),
        child: BlocConsumer<ResDetailCubit, RestaurantStates>(
        listener: (context, state) {},
    builder: (context, state) {
    final cubit = ResDetailCubit.get(context);
        return
            Scaffold(
             body: SingleChildScrollView(
               child: Column(
                children: [
                  Stack(
                children: [
                   Container(
                    height: height(context)*0.45,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(img,),fit: BoxFit.fill )
                    ),
                  ),
                    Positioned(
                      top: width(context)*0.1,
                      left: width(context)*0.06,
                      child: GestureDetector(
                          onTap: (){cubit.changeFav();},
                          child:cubit.isFav? Image.asset('assets/images/Group 3574@3x.png', width: width(context)*0.11,):
                           Image.asset('assets/images/Group 35744@3x.png', width: width(context)*0.11,) )),
                    Positioned(
                      right: width(context)*0.06,
                      top: width(context)*0.1,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/Group 3560@3x.png', width: width(context)*0.11,))),

                ],

            ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform.rotate(
                        angle: pi,
                        child: Transform.scale(
                          scale: .65,
                          child: RatingBar.builder(
                             initialRating: 3,
                             minRating: 1,
                             direction: Axis.horizontal,
                             allowHalfRating: true,
                             itemCount: 5,
                               itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => const Icon(
                                     Icons.star,color: Colors.amber,size: 10,),
                                      onRatingUpdate: (rating) {
                                         print(rating);
                                              },
                                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal: width(context)*0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomText(text: 'مفتوح الآن', color: AppColor.greenColor),
                            SizedBox(width: width(context)*0.04,),
                            CustomText(text: name, color: AppColor.blackColor, fontFam: FontWeight.bold,),
                          ],
                        ),
                      ),
                      SizedBox(height: height(context)*0.008,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width(context)*0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomText(text: address, color: AppColor.pinkColor,size: 14,),
                            Icon(Icons.location_on,color: AppColor.pinkColor,size: 20,),
                          ],
                        ),
                      ),
                      SizedBox(height: height(context)*0.004,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width(context)*0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:EdgeInsets.only(top: width(context)*0.004),
                              child: CustomText(text: '01123456789', color: AppColor.liGray,size: 14,),
                            ),
                            Icon(Icons.phone,color: AppColor.liGray,size: 14,),
                          ],
                        ),
                      ),
                      SizedBox(height: height(context)*0.01,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width(context)*0.06),
                        child: CustomText(text: 'سلسلة مطاعم ديري كوين في جدة تقدم لكم أشهي المأكولات المشوية اللذيذة و المحببة لدي الصغار و الكبار فمكان عائلتك المفضل عندنا نحن في انتظارك بادر بحجز طاولتك',
                            color: AppColor.blackColor, align: TextAlign.right,),
                      ),
                      SizedBox(height: height(context)*0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ResDetailRow(index: 3,),
                          ResDetailRow(index: 0,),

                        ],
                      ),
                      SizedBox(height: height(context)*0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ResDetailRow(index: 4,),
                          ResDetailRow(index: 1,),

                        ],
                      ),
                      SizedBox(height: height(context)*0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ResDetailRow(index: 5,),
                          ResDetailRow(index: 2,),

                        ],
                      ),
                      SizedBox(height: height(context)*0.04,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: width(context)*0.06),
                        child: CustomBtn(text: 'احجز طاولتك الآن',ontap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ConfirmBooking(img: img, title: name, address: address,);
                          }));
                        },weightt: FontWeight.bold,),
                      ),
                      SizedBox(height: height(context)*0.04,),

                    ],
                  ),
          ],
        ),
             ),
      );
        }));


  }
}
