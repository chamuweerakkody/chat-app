import 'package:animate_do/animate_do.dart';
import 'package:chat_app/utils/app_assets.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.width = 200,
    this.height = 200,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Image.asset(
          AppAssets.logo,
          width: width,
          height: height,
          fit: BoxFit.fill,
        ),
    );
  }
}