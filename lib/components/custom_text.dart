import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,{
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
   this.fontFamily = "Poppins",
   this.overflow,
    super.key,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final String fontFamily;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign:textAlign,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily, 
        
    
      ),
    );
  }
}