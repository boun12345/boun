import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container (height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                   )
              )
              )
              Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0,23),
                ),
                
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                child: Textfield(
                  onchanged:( value ){},
                decoration: InputDecoration(
                 hintText: "Search",
                 hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0,5),
                 ),
                 enabledBorder: InputBorder.none,
                 focusedBorder: InputBorder.none,
                 suffixIcon: SvgPicture.asset("assets/icon/search.svg")
                 ),
                ),
                ], 
              ),
             ),
             S 
            ],
          ),
        )
      ]
    );
  }
}