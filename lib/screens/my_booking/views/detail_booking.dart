import 'package:flutter/material.dart';
import 'package:twlla/components/custom_text.dart';
import 'package:twlla/components/style/size.dart';

import '../../../components/custom_btn.dart';
import '../../../components/style/color.dart';
import '../widgets/custom_de_bo_row.dart';
import '../widgets/custom_stack_detail.dart';
import 'editing_booking.dart';
class DetailBooking extends StatelessWidget {
   DetailBooking({Key? key, required this.currentIndex,required this.img, required this.name}) : super(key: key);
  String img;
  String name;
  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: CustomStackDetail(currentIndex: currentIndex,name: name,img: img,),
      ),
    );
  }
}
