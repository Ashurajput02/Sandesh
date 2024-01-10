import 'package:newfile/mainpage.dart';
import 'package:newfile/pages/homepage.dart';
import 'package:newfile/pages/login_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:ThemeData(
        fontFamily: 'Urbanist',),
        initialRoute:'/'
        ,routes:{
        '/':(context) =>loginpage(),
      '/loginpage':(context) =>loginpage(),
      '/home':(context) =>homepage(),
      '/mainpage':(context) =>mainpage(),
      }
    );
  }

}
