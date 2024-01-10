import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testpage extends StatefulWidget {  @override
  State<testpage> createState() => _testpageState();
}
int count=0;
class _testpageState extends State<testpage> {
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
    floatingActionButton: FloatingActionButton(onPressed: () {
     setState(() {
       count++;
     });
    },child:Icon(Icons.add),),
  );
    throw UnimplementedError();
  }}