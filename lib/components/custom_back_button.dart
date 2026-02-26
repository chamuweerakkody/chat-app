import 'package:flutter/material.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
     this.color,
    super.key,
  });
     final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      onPressed: (){
        Navigator.of(context).pop();
    },
     icon: Icon(Icons.arrow_back_ios));
  }
}