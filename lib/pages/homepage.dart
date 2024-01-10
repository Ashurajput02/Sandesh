import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.menu),
        actions:[
        Icon(Icons.settings),
      ]),
        body:ListView(

          children:
          mockusersfromserver()),
        );
    throw UnimplementedError();
  }

  Widget useritem(){
    return Row(
      children: [
        Image.asset("assets/images/user1.jpeg",width:40,height:60),
        Text("Ashu Rajput"),
      ],
    );

   }

  List <Widget> mockusersfromserver(){
    List<Widget>users=[];
    for(var i=0;i<20;i++)
      {
        users.add(useritem());
      }
    return users;

  }
}

