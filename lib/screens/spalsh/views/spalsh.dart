import 'package:flutter/material.dart';

import '../../../components/fade_animate.dart';
import '../../../components/style/size.dart';
import '../../auth/login/view/login.dart';

class SplashView extends StatefulWidget {
   const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  String img='assets/images/logo@2x.png';

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      setState(() {
        img='assets/images/table_logo@2x.png';
      });
      Future.delayed(const Duration(seconds: 5)).then((value) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return const LoginView();
        }));
      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/Group 2927@3x.png'),
            fit: BoxFit.fill),
          ),
          child: FadeAnimation(
          1,
          2,
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                    tag: 'img1',
                    child: Image.asset(img,width:width(context)*.3 ,))
              ],
            ),
          ),
        ),

        ),
      ),
    );
  }
}
