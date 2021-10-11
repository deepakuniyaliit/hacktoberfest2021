import 'package:flutter/material.dart';
import 'package:food_startup/Pages/loginPage.dart';
import 'Pages/StartingScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (BuildContext context) => new LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      title: "Foodies",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: StartingScreen(),    
    );
  }
}
