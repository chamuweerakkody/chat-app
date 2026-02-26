import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:art_sweetalert_new/art_sweetalert_new.dart';
import 'package:flutter/material.dart';

class AlertHelper {
  static void showAlert(BuildContext context, String desc, {ArtAlertType type = ArtAlertType.error, String title = 'Validation Error!' } ){
    ArtSweetAlert.show(
        context: context,
        title: Text(title),
        content: Text(desc),
        type: type,
        actions: [
          ArtAlertButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('Cancel'),
            backgroundColor: Colors.red,
          ),
          ArtAlertButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text('Ok'),
            backgroundColor: Colors.green,
          ),
       ],
     ); 
  }

  //store a snackbar
  static void showSnackBar(BuildContext context, String msg, {AnimatedSnackBarType type = AnimatedSnackBarType.error}){
    AnimatedSnackBar.material(
    msg,
    type: type,
    duration: Duration(seconds: 2)
).show(context);
  }
}