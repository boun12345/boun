import 'package:flutter/material.dart';
import 'package:myapp/welcome.dart';

class  Login extends StatelessWidget {
  const Login ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          children:[
            Text("Username"),
              SizedBox(
                height: 50
              ),
               Container(
                 width: MediaQuery.of(context).size.width * 0.8,
                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                 child: TextField(
                   obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Please enter username",
                    icon: Icon(
                      Icons.person
                       
                    ),
                  ),
              ),
               ),
            Text("Password"),
              SizedBox(
                height: 50
              ),
               Container(
                 width: MediaQuery.of(context).size.width * 0.8,
                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                 child: TextField(
                   obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Please enter password",
                    icon: Icon(
                      Icons.key
                    ),
                  ),
                 ),
               ),

               ElevatedButton
               (onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
               },
                child: Text( "Login" , style: TextStyle(color: Colors.black,
                ),
                ),
                ),
           ],
        ),
      ),
    );
  }
}