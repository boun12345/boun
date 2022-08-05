import 'package:flutter/material.dart';

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class MyList2 extends StatefulWidget {
  //MyList2({Key? key}) : super(key: key);


  @override
  State<MyList2> createState() => _MyList2State();
}

class _MyList2State extends State<MyList2> {

    var pets =[];
    bool isloading = true;

  void fetchApi()async{ 
    var url = Uri.https("https://60f9bc967ae59c0017165f11.mockapi.io/","/pets");

    
    var response = await http.get(url);

    if (response.statusCode == 200){

      var items = convert.jsonDecode(response.body);
      setState(() {
        pets = items;
        isloading = false;
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    fetchApi();
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            color: Colors.white,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(pets[index]['avatar']),
                  ),   
              ),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(pets[index]['name'],
                    style: TextStyle(fontSize: 30),),
                    Text(pets[index]['type']),
                  ],
                  ),
              ),
              Expanded(
                flex: 2,
                child: IconButton( icon: Icon(Icons.phone),
                onPressed: (null))
              ),],
              
                ),
              
            );
        },
      ),
    );
    
  }
}