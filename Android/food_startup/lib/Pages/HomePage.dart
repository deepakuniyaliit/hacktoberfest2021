import 'package:flutter/material.dart';
import 'package:food_startup/Models/categories.dart';
import 'package:food_startup/Models/mainDrawer.dart';
import 'package:food_startup/Models/searchBar.dart';
import 'package:food_startup/Models/toastMethod.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.person_sharp,
                color: Colors.amber[600],
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      drawer: myDrawer(context),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text(
              ".",
              style: TextStyle(color: Colors.amber[600], fontSize: 75),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Let's eat",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Quality food",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                mySearchBar(
                  "Search food",
                  Icon(Icons.search),
                  Colors.grey[100],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: [
                      myCategories("Indian", Colors.amber),
                      myCategories("Spanish", Colors.pink),
                      myCategories("Indian", Colors.amber),
                      myCategories("Indian", Colors.amber),
                      myCategories("Indian", Colors.amber),
                      myCategories("Spanish", Colors.pink),
                      myCategories("Spanish", Colors.pink),
                      myCategories("Indian", Colors.amber),
                      myCategories("Indian", Colors.amber),

                      myCategories("Spanish", Colors.pink),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.map),
        onPressed: () {
          showToast("Button presssed");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
