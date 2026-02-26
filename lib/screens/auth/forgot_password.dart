import 'package:chat_app/components/app_logo.dart';
import 'package:chat_app/components/custom_back_button.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/components/custom_textfield.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CommonBackButton(),
                ),

                SizedBox(
                  height:48
                ),

                CustomText("Forgot Password",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,),
            
                SizedBox(
                  height: 41,
                ),
            
                AppLogo(),
            
                  SizedBox(
                  height: 100,
                ),
                
                 CustomText("Please, enter your email address. You will receive \na link to create a new password via email.",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      ),
                 
                 SizedBox(height: 16),
                 CustomTextField(
                  hintText: "Enter your email here", 
                  labelText: "Email",
                  ),
                 
          
          
                  SizedBox(
                    height: 53
                  ),
          
                  
          
                  SizedBox(
                    height: 53,
                  ),

                  //Consumer<AuthProvider>(builder: (context, value, child){
                  //  return 
                    CustomButton(
                    text: "Send",
                   // isLoading: value.isLoading,
                    onTap: (){
                     // value.sendPasswordResetEmail(context);
                    }
                  ),
                  //}),
          
                 
               
              ],
            ),
          
                ),
        )
    ));
  }
}



