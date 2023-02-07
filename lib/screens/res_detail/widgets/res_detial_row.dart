import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../model/res_det_model.dart';
class ResDetailRow extends StatelessWidget {
   ResDetailRow({Key? key, required this.index}) : super(key: key);
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
    ResDetailModel(img: Image.asset('assets/images/file.png',width: 20), title: ' 3 ايام', subTitle: 'فترة السماح بإلغاء '),
    ResDetailModel(img: Image.asset( 'assets/images/wallet.png',width: 20), title: '50 ريال', subTitle: '      مبلغ تأكيد الحجز'),
    ResDetailModel(img:Icon(Icons.houseboat_outlined, color: AppColor.purpleColor,), title: 'داخلي', subTitle: '            نوع المكان'),
    ResDetailModel(img:Image.asset('assets/images/children.png',width: 20), title: '5سنين', subTitle: 'عمر طفل المسموح'),
    ResDetailModel(img: Icon(Icons.monetization_on_outlined, color: AppColor.purpleColor,), title: 'أونلاين ', subTitle: 'طرق الدفع المتاحة'),
    ResDetailModel(img: Icon(Icons.car_crash_outlined, color: AppColor.purpleColor,),title: ' لا يوجد', subTitle: 'مكان لإيقاف السيارة'),


  ];
}
