import 'package:flutter/material.dart';
import 'package:myapp/airline.dart';
import 'package:myapp/constant.dart';
import 'login.dart';
import 'MyList2.dart';

void main (List<String> args){
  runApp(app());
}

class app extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //kum nod sue 
    debugShowCheckedModeBanner: false,
    title: 'Shopping App',

    home: MyList2(),
    //nar tum it t kum nod

    );
  }
}