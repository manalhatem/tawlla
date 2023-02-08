import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../../home/models/home_model.dart';
import '../widgets/custom_bookins_row.dart';
import '../widgets/custom_gride_element.dart';
class MyBookingView extends StatefulWidget {
   MyBookingView({Key? key}) : super(key: key);
   int currentIndexx=0;

  @override
  State<MyBookingView> createState() => _MyBookingViewState();
}

class _MyBookingViewState extends State<MyBookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: height(context)*0.065, horizontal:height(context)*0.01 ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: height(context)*0.005,),
                  child: CustomText(text: 'حجوزاتي', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 18,),
                ),
                SizedBox(width: width(context)*0.2,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 30,)),

              ],
            ),
            SizedBox(height: height(context)*0.02,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:width(context)*0.014),
              child: SizedBox(
                height: height(context)*0.08,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return GestureDetector(
                            onTap: (){
                              setState(() {
                                widget.currentIndexx=index;
                                // print(index);
                                // print('--'+'${widget.currentIndexx}');
                              });
                            },
                            child: CustomBookingRow(curindex:widget.currentIndexx,index: index,));
                  }, separatorBuilder: (BuildContext context, int index){
                      return  SizedBox(width: width(context)*0.06,);
                  },),
                ),
              ),
            ),
            Expanded(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: .75
                ),
                    itemCount:
                    myBookings.length - widget.currentIndexx,
                    itemBuilder: (context, index){
                  return CustomElementGride(
                    currentIndex:widget.currentIndexx,
                    img: myBookings[index].img, title: myBookings[index].title,
                    name: myBookings[index].name, address: myBookings[index].address,

                  );;
                }),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
