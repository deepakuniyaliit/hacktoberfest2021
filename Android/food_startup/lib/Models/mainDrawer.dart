import 'package:flutter/material.dart';

Widget myDrawer(context) {

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children:  <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.amber[600],
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ),
  );
}
