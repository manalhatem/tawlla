import 'package:flutter/material.dart';
import 'package:twlla/components/custom_text.dart';
import 'package:twlla/components/style/color.dart';
import '../../../components/custom_btn.dart';
import '../../../components/custom_text_form_field.dart';
import '../../../components/style/size.dart';
import '../../auth/edit_pass/views/edit_pass.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: CustomText(text: 'تعديل بياناتي الشخصية',color: AppColor.blackColor,size: 17,
            fontFam: FontWeight.w600,),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 6),
              child: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.purpleColor,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top:height(context)*0.05,right:height(context)*0.03,left: height(context)*0.03 ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children:  [
                    const  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: AppColor.pinkColor,
                      child: IconButton(
                        onPressed: (){

                        },
                        icon: const Icon(Icons.edit,color: Colors.white,size: 18,),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsets.only(right: width(context)*0.03),
                child: CustomText(text: 'الاسم', color: AppColor.textColor, size: 12,),
              ),
              SizedBox(height: height(context)*.015,),
              CustomTextFormField(hint: 'منار حاتم',size: 12,type: TextInputType.emailAddress,),
              SizedBox(height: height(context)*.02,),
              Padding(
                padding:EdgeInsets.only(right: width(context)*0.03),
                child: CustomText(text: 'البريد الإلكتروني', color: AppColor.textColor, size: 12,),
              ),
              SizedBox(height: height(context)*.015,),
              CustomTextFormField(hint: 'info@tawla.com',size: 12,type: TextInputType.emailAddress,),
              SizedBox(height: height(context)*.02,),
              Padding(
                padding:EdgeInsets.only(right: width(context)*0.03),
                child: CustomText(text: 'رقم الجوال', color: AppColor.textColor, size: 12,),
              ),
              SizedBox(height: height(context)*.015,),
              CustomTextFormField(hint: '01123456789',size: 12,type: TextInputType.number,),
              SizedBox(height: height(context)*.02,),
              CustomBtn(text: 'حفظ التعديل',ontap: (){},weightt: FontWeight.bold,),
              SizedBox(height: height(context)*.18,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const EditPassword();
                    }));
                  },
                  child: Center(child: CustomText(text: 'هل تريد تغير كلمة المرور ؟', color: AppColor.textColor,size: 12,))),

            ],
          ),
        ),
      ),
    );
  }
}
