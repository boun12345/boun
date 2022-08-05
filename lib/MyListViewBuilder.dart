import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
 // const MyListViewBuilder({Key? key}) : super(key: key);

  //List pets = <List<String>>[[ "Lily","Dog"],["Garfield","Cat"],["Bob","Fish"]];

  var pets =[];

  void fetchApi()async{
    var url = Uri.https("https://60f9bc967ae59c0017165f11.mockapi.io/","/pets");

    
    var response = await http.get(url);
  }
  @override
  Widget build(BuildContext context) {
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
                  child: Text(pets[index][0][0]),
                  ),   
              ),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(pets[index][0],
                    style: TextStyle(fontSize: 30),),
                    Text(pets[index][1]),
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