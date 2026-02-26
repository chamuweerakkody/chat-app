import 'package:animate_do/animate_do.dart';
import 'package:chat_app/components/app_logo.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/screens/auth/signup.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/utils/helpers.dart';
import 'package:flutter/material.dart';

  class Splash extends StatefulWidget {
    const Splash({super.key});

    @override
    State<Splash> createState() => _SplashState();
  }

  class _SplashState extends State<Splash> {
   @override
    void initState(){
      Future.delayed(Duration(seconds: 5), 
     (){
       Helpers.navigateTo(context, Signup());
       
      });



    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              child: AppLogo(
                width: 225,
                height: 225,
              )
            ),

            SizedBox(
              height: 72
            ),

            FadeInUp(
              child: CustomText(
                 "Let's Chat",
                  fontSize: 30,
                  fontWeight:FontWeight.w600,
                  color: AppColors.primaryColor,
                  textAlign: TextAlign.center
              ),
            )
          ],
        ))
    );

  }
}

