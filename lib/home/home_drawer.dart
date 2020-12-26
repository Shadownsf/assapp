import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'John Doe',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            decoration: BoxDecoration(
              // image: DecorationImage(
              //     image: AssetImage("images/header.jpeg"), fit: BoxFit.cover),
              color: Colors.grey[800],
            ),
          ),
          ListTile(
            title: Text(
              'Account',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Payment',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
