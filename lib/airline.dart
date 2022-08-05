import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Airline extends StatelessWidget {
  const Airline({Key? key}) : super(key: key);

  void loadAirline() async{
    //
    var url = Uri.https("api.instantwebtools.net","/v1/airlines/1");

    // hup kha jark api
    var response = await http.get(url);

    //kha ja song ma t response

    print(response);
    print(response.statusCode);
    print(response.body);
  }
  @override
  Widget build(BuildContext context) {
    loadAirline();
    return Container();
  }
}