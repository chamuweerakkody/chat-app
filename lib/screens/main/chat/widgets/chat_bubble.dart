import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    this.isSender = true,
    super.key,
  });

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isSender? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        BubbleSpecialThree(
          text: 'Mkda krnne?',
          color: isSender?  AppColors.primaryColor : AppColors.lightBlue,
          tail: true,
          isSender: isSender,
          textStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          ),
        ),
    
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: CustomText(
            "1 min ago",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.ash,),
        ),

      ],
    );
  }
}