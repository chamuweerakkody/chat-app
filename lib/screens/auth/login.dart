import 'package:chat_app/components/app_logo.dart';
import 'package:chat_app/components/custom_back_button.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/components/custom_textfield.dart';
import 'package:chat_app/screens/auth/forgot_password.dart';
import 'package:chat_app/screens/main/main_screen.dart';
import 'package:chat_app/utils/app_assets.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //final TextEditingController _email = TextEditingController();
  //final TextEditingController _password = TextEditingController();
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
                CustomText("Login",
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
                  hintText: "Enter your email here", 
                 labelText: "Email"
                 ),

                 SizedBox(height: 7),

                 CustomTextField(
                  hintText: "Enter your password here",
                  labelText: "Password", 
                  obscureText: true,
                  ), 
          
          
          
                  SizedBox(
                    height: 12
                  ),
          
                  InkWell(
                    onTap:() {
                     Helpers.navigateTo(context, ForgotPassword());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:155),
                      child: CustomText("Forgot your password?",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
          
                  SizedBox(
                    height: 24,
                  ),

                  //Consumer<AuthProvider>(builder: (context, value, child){
                   // return   
                    CustomButton(
                    text: "Login",
                    onTap: (){
                      Helpers.navigateTo(context, MainScreen());
                    }
                  ),
                  //}),
          
                  SizedBox(
                    height: 23,
                  ),
          
                   
                   CustomText("Or login with social account",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    ),

                    SizedBox(
                      height:12,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(path: AppAssets.google, onTap:(){}),
                      SizedBox(width: 16),
                      SocialButton(path: AppAssets.facebook, onTap: (){}),
                    ],
                  ),
               
              ],
            ),
          
                ),
        )
    ));
  }
 
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.path,
    required this.onTap,
    super.key,
  });
  
  final String path;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 20),
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(24),
         color: Colors.white,
         boxShadow: [
           BoxShadow(color: AppColors.ash.withOpacity(.2),
           offset: Offset(0,0),
           blurRadius: 10
          )]
      ),                    
        child: SvgPicture.asset(
          path
        ),
      ),
    );
  }
}

