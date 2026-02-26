import 'package:chat_app/components/app_logo.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/components/custom_textfield.dart';
import 'package:chat_app/screens/auth/login.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/utils/helpers.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText("SignUp",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,),
          
              SizedBox(
                height: 41,
              ),
          
             AppLogo(),
          
                SizedBox(
                height: 30,
              ),
              
               CustomTextField(
                hintText: "Enter your name here",
                labelText: "Name"),
               
               SizedBox(height: 7),

               CustomTextField(
                hintText: "Enter your email here", 
                labelText: "Email"),

               SizedBox(height: 7),

               CustomTextField(
                hintText: "Enter your password here",
                labelText: "Password", obscureText: true,),



                SizedBox(
                  height: 12
                ),

                InkWell(
                  onTap:(){
                    Helpers.navigateTo(context, Login());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:155),
                    child: CustomText("Already have an account?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(
                  height: 24,
                ),
              //  Consumer<AuthProvider>(builder: (context, value, child){
               //   return 
                  CustomButton(
                  text: "SignUp",
                  onTap: (){
                  }
                )
              //  }),
             
            ],
          ),
        
      )
    ));
  }


}

