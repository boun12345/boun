import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Container(
            child: Text("Boun"),
            color: Colors.orange[300],
            height: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom:20),
          ),
          Container(
            child: Text("Boun"),
            color: Colors.green[300],
            height: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom:20),
          ),
          Container(
            child: Text("Boun"),
            color: Colors.blue[300],
            height: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom:20),
          ),
        ],
      ),
    );
  }
}