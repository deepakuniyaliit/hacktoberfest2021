 import 'package:fluttertoast/fluttertoast.dart';
 import 'package:flutter/material.dart';
 
 void showToast(String toast__text) {
    Fluttertoast.showToast(
      msg: '$toast__text',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.grey[900],
      textColor: Colors.white,
    );
  }