import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mySearchBar(String hinttext, Icon icon, Color backgroundColor, ) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 15, left: 30,),
        prefixIcon: icon,
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hinttext,
      ),
    ),
  );
}
