import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../../res_detail/model/res_det_model.dart';
class DetailBookingRow extends StatelessWidget {
  DetailBookingRow({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(size: 13,text:detailResLis[index].title , color: AppColor.blackColor, fontFam: FontWeight.bold,),
            SizedBox(height: width(context)*0.01,),
            CustomText(text: detailResLis[index].subTitle, color: AppColor.grayColor,size: 10,),
          ],),
        SizedBox(width: width(context)*0.01,),
        Stack(
            alignment: Alignment.center,
            children:[
              Image.asset('assets/images/rectangle.png',width: width(context)*0.13),
              detailResLis[index].img ,
            ]),

      ],
    );
  }

  List<ResDetailModel> detailResLis=[
    ResDetailModel(img: Image.asset('assets/images/phoon.png',width: 20), title: '01123456789', subTitle: 'رقم جوال المطعم'),
    ResDetailModel(img: Image.asset( 'assets/images/pers.png',width: 20), title: '2', subTitle: 'عدد الأفراد'),
    ResDetailModel(img:Image.asset('assets/images/callen.png',width: 20), title: '26 فبراير - 03:15 مساء', subTitle: 'موعد الحجز'),
    ResDetailModel(img:Image.asset('assets/images/coin.png',width: 20), title: 'اونلاين', subTitle: 'طريقة الدفع'),

  ];
}
