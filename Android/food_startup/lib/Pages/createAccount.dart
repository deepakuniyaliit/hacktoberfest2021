import 'package:flutter/material.dart';
import 'package:food_startup/Models/textInputes.dart';
import 'package:food_startup/Pages/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 340, top: 180),
              child: Text(
                ".",
                style: TextStyle(color: Colors.amber[600], fontSize: 150),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Image(
                        image: AssetImage('assets/food.png'),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: new Text(
                    "Create Account",
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
                      height: MediaQuery.of(context).size.height / 2.2,
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
                            height: 15,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 8, top: 10, right: 20),
                            child: myTextInput("Password",
                                "Confirm your password", Icon(Icons.vpn_key),
                                isPassword: true),
                          ),
                          SizedBox(
                            height: 35,
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
                                    "Create Account",
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
                        ],
                      ),
                    ),
                  ),
                ),
                          SizedBox(
                            height: 20,
                          ),
                
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: GestureDetector(
                                      onTap: () {},
                                      child:
                                          Image.asset('assets/facebook.png')),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 30,
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Image.asset('assets/google.png')),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 35,
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Image.asset('assets/twitter.png')),
                                ),
                              ],
                            ),
                          )
                
              ],
            ),
          ],
       ),
    );
  }
}
