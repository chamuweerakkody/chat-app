import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/screens/main/chat/chat.dart';
import 'package:chat_app/utils/app_assets.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/utils/helpers.dart';
import 'package:flutter/material.dart';

class ConversationCard extends StatelessWidget {
  const ConversationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Helpers.navigateTo(context, Chat());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: AppColors.ash
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  AppAssets.profileUrl,
                  width: 40,
                  height: 40,
                  ),
            
                 SizedBox(width: 16,), 
            
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     CustomText(
                      "Kumali Ranasinghe",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      ),
                      
                      CustomText(
                      "Mkda krnne?",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColors.ash,
                      ), 
                   ],
                 ) 
              ],
            ),
             CustomText(
                  "1 min ago",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.ash,
                  ),
          ],
        ),
      ),
    );
  }
}

