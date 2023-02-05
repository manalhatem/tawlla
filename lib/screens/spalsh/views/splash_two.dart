import 'package:flutter/material.dart';

import '../../../components/fade_animate.dart';
import '../../../components/style/size.dart';
import '../../auth/login/view/login.dart';

class SplashTwoView extends StatefulWidget {
  const SplashTwoView({Key? key}) : super(key: key);

  @override
  State<SplashTwoView> createState() => _SplashTwoViewState();
}

class _SplashTwoViewState extends State<SplashTwoView> {

  @override
  void initState() {
      Future.delayed(const Duration(seconds: 3)).then((value) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return const LoginView();
        }));
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
                  Image.asset('assets/images/table_logo@2x.png',width:width(context)*.3 ,),

                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}