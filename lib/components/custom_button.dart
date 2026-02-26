import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onTap,
    this.isLoading = false,
    super.key,
  });

  final String text;
  final Function() onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading? null : onTap,
      child: Container(
        height: 50,
        width:  259,
        alignment: Alignment.center, 
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: AppColors.ash.withOpacity(.2),
            offset: Offset(0,0), 
            blurRadius: 10
        )] 
        ),
        child: isLoading?CircularProgressIndicator(
          color: AppColors.white,
        ) :CustomText(text,
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          ),
      ),
    );
  }
}