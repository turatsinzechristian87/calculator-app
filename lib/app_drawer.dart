import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Sign In'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation to Sign In screen if necessary
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text('Sign Up'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation to Sign Up screen if necessary
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Calculator'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation to Calculator screen if necessary
            },
          ),
        ],
      ),
    );
  }
}
