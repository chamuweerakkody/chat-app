import 'package:chat_app/components/custom_back_button.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/utils/app_assets.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor.withOpacity(.7),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CommonBackButton(),
              Image.network(
                AppAssets.profileUrl,
                width: 45,
                height: 45,
                ),
              SizedBox(width: 5),  
              CustomText(
                "Kumali Ranasinghe",
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                ),
            ],
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}