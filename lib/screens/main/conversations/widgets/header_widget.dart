import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/utils/app_assets.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              CustomText("Chamudi Weerakkody"),
            ],
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout_rounded))
        ],
      ),
    );
  }
}