import 'package:flutter/material.dart';

Widget myTextInput(String labeltext, String hinttext, Icon prefixIcon, {bool isPassword = false,}) {
  return Container(
    height: 50,
    child: TextField(
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
        icon: prefixIcon,
        labelText: '$labeltext',
        hintText: '$hinttext',
        border: OutlineInputBorder(),
      ),
    ),
  );
}

