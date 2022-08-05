import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class test extends StatelessWidget {
  //const test({Key? key}) : super(key: key);

void  LoadProducts() async{


  var response = await http.get(Url);
  print(response);
  print(response.statusCode);
  print(response.body);
  }
  var Url = Uri.https('fakestoreapi.com','/products/1');

  @override
  Widget build(BuildContext context) {

    LoadProducts();
    return Container();
  }
}