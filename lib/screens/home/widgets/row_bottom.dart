import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
class RowBottom extends StatelessWidget {
   RowBottom({Key? key,required this.text,this.icon,required this.select}) : super(key: key);

  String text;
  IconData? icon;
  bool select;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width(context)*0.85,
      padding: EdgeInsets.all(14),
      color: select? Colors.white : Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomText(text: text, color:select?AppColor.purpleColor: AppColor.blackColor,size: 14,),
          SizedBox(width: width(context)*0.05,),
          Icon(icon,size: 30,color: select?AppColor.purpleColor:AppColor.blackColor,)
        ],
      ),
    );
  }
}

class RowModel{
  String text;
  IconData? icon;
  bool select;

  RowModel({required this.text, this.icon, required this.select});
}
List<RowModel> rowModel=[
  RowModel(text: 'حجوزاتي', select: true,icon: Icons.table_restaurant_outlined),
  RowModel(text: 'المفضلة', select: false,icon: Icons.favorite_outline),
  RowModel(text: 'محفظتي', select: false,icon: Icons.wallet_membership),
  RowModel(text: 'اتصل بنا', select: false,icon: Icons.settings_phone_sharp),
  RowModel(text: 'عن التطبيق', select: false,icon: Icons.app_registration),
  RowModel(text: 'تسجيل خروج', select: false,icon: Icons.logout_outlined),
  
];