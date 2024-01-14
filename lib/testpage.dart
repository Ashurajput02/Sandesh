import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testpage extends StatefulWidget {  @override
  State<testpage> createState() => _testpageState();
}

class _testpageState extends State<testpage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return Scaffold(
    appBar: AppBar(
      title: Text("hey there"),
    ),
    body:Center(child: Text("this is a counter :$count",style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),)),
    floatingActionButton: FloatingActionButton(onPressed:() {
     setState(() {
       count++;
     });
    },child:Icon(Icons.add),),
  );
    throw UnimplementedError();
  }}

//this stateful widget help us