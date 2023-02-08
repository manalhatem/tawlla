import 'package:flutter/material.dart';
import 'package:twlla/components/custom_text.dart';

import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
class RuleView extends StatelessWidget {
  const RuleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: height(context),
          decoration:const BoxDecoration(
            image: DecorationImage(image:AssetImage('assets/images/auth_back.png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding:EdgeInsets.only(top:height(context)*0.03,right:height(context)*0.03,left: height(context)*0.03 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(text: 'الشروط و الأحكام', color:AppColor.blackColor,size: 17,fontFam: FontWeight.w600, ),
                      SizedBox(width: width(context)*0.12,),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.purpleColor,)),
                    ],
                  ),
                  SizedBox(height: height(context)*.05,),
                  Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.2)),
                  SizedBox(height: height(context)*.05,),
                  Center(
                      child: SizedBox(
                        width: width(context)*0.9,
                        child: CustomText(text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المســـاحة لقد تم توليد هذا النص من مولد النــــــص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصـــــوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقـــــرات يتيح لك مولد النــــــــص العربى زيادة عدد الفقرات كمــــــا تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحـــيان أن يطلع على صورة حقيقية لتصميم الموقع',
                          color: AppColor.textColor,size: 14,align: TextAlign.right,fontFam: FontWeight.w500,),
                      )
                  ),
                  SizedBox(height: height(context)*.02,),
                  Center(
                      child: SizedBox(
                        width: width(context)*0.9,
                        child: CustomText(text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المســـاحة لقد تم توليد هذا النص من مولد النــــــص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصـــــوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقـــــرات يتيح لك مولد النــــــــص العربى زيادة عدد الفقرات كمــــــا تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحـــيان أن يطلع على صورة حقيقية لتصميم الموقع',
                          color: AppColor.textColor,size: 14,align: TextAlign.right,fontFam: FontWeight.w500,),
                      )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
