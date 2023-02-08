import 'package:flutter/material.dart';
import '../../../components/custom_btn.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_text_form_field.dart';
import '../../../components/style/color.dart';
import '../../../components/style/size.dart';
import '../../home/views/home_view.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      Padding(
                        padding:EdgeInsets.only(top: height(context)*0.005,),
                        child: CustomText(text: 'اتصل بنا ', color:AppColor.blackColor,fontFam: FontWeight.bold,size: 18,),
                      ),
                      SizedBox(width: width(context)*0.18,),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_forward_ios, color: AppColor.purpleColor,size: 26,)),

                    ],
                  ),
                  SizedBox(height: height(context)*.06,),
                  Center(child: Image.asset('assets/images/table_logo@2x.png',width:width(context)*.28)),
                  SizedBox(height: height(context)*.06,),
                  CustomText(text: 'نوع رسالة التواصل', color: AppColor.textColor,fontFam: FontWeight.w500,),
                  SizedBox(height: height(context)*.015,),
                  CustomTextFormField(hint: 'اقتراح',size: 12,type: TextInputType.number,
                  suffix: Icon(Icons.arrow_drop_down_sharp,color: AppColor.pinkColor,),),
                  SizedBox(height: height(context)*.04,),
                  CustomText(text: 'رسالتك', color: AppColor.textColor,fontFam: FontWeight.w500,),
                  SizedBox(height: height(context)*.015,),
                  CustomTextFormField(hint: 'اكتب نص الرسالة هنا',size: 12,type: TextInputType.number,),
                  SizedBox(height: height(context)*.09,),
                  CustomBtn(text: 'إرسال',ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const HomeView();
                    }));
                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
