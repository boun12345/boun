import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  // const AppDrawer({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.7),
        children: [
          DrawerHeader(child: Text('Menu')),
          ListTile(
            title: Text("Main"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Profile"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Product"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Signout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
