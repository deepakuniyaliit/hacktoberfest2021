import 'package:flutter/material.dart';

Widget myCategories(String category, Color color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 120,
      width: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          '$category',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
  );
}
