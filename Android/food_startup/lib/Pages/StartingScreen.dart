import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_startup/Models/toastMethod.dart';
import 'package:food_startup/Pages/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      body: Column(
        children: [
          SizedBox(
            height: 155,
          ),
          Container(
              width: 300,
              child: Image(
                image: AssetImage('assets/food.png'),
              )),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text("Foodiez",
                style: GoogleFonts.lobster(
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: Colors.white,
                ),
              ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "Order your food online",
            style: GoogleFonts.lobster(
                fontWeight: FontWeight.bold,
                fontSize: 33,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          ClipOval(
            child: Material(
              color: Colors.white,
              child: InkWell(
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: Image.asset('assets/down.gif'),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/login');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
