import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  //const welcome ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"), 
        )
      ,body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("return")),
           (build(context))      
         ] ),
      )           
    );
  }
}

