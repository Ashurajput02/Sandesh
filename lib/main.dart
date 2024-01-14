import 'package:newfile/mainpage.dart';
import 'package:newfile/pages/editprofilepage.dart';
import 'package:newfile/pages/homepage.dart';
import 'package:newfile/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:newfile/pages/profilepage.dart';
import 'package:newfile/testpage.dart';

import 'config/approutes.dart';



void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Urbanist',),
        initialRoute:'/'
        ,routes:AppRoutes.pages,

    );
  }

}
