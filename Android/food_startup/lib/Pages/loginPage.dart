import 'package:flutter/material.dart';
import 'package:food_startup/Models/google_auth.dart';
import 'package:food_startup/Models/textInputes.dart';
import 'package:food_startup/Models/toastMethod.dart';
import 'package:food_startup/Pages/HomePage.dart';
import 'package:food_startup/Pages/createAccount.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            Column(
              children: [                
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: new Text(
                    "Foodiez",
                    style: GoogleFonts.lobster(fontSize: 44),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: MediaQuery.of(context).size.height / 1.6,
                      width: MediaQuery.of(context).size.width * 0.92,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 8, top: 10, right: 20),
                            child: myTextInput(
                              "Email",
                              "Enter your email",
                              Icon(Icons.email),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 8, top: 10, right: 20),
                            child: myTextInput("Password",
                                "Enter your password", Icon(Icons.vpn_key),
                                isPassword: true),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showToast("Ab change nahi ho sakta bhai");
                                  },
                                  child: Text(
                                    "Forgot your password ?",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => new HomePage()));
                            },
                            child: Center(
                              child: Container(
                                height: 40,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: Colors.amber[600],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(),
                          Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/facebook1.png',
                                    width: 220,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/g.png',
                                    width: 220,
                                    height: 100,
                                  ),
                                ),
                              ],
                            ),
                          ),                        
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account ?",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new CreateAccount(),
                              )
                            );
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange[800],
                            ),
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ),
                    ],
                  ),
               ),
            ],
          )
        ],
      )
    );
  }
}
