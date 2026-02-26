import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.obscureText = false,
    this.controller,

  });

  final String hintText;
  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: AppColors.ash.withOpacity(.2),
            offset: Offset(0,0),
            blurRadius: 10
            )]
        ),
        child: TextField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.white,)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
              color: AppColors.primaryColor,
              ),
            ),
            label: CustomText(labelText,
             color: AppColors.ash,),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.ash,
            ),
          ),
        ),
      );
  }
}