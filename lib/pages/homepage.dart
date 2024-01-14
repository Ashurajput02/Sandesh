import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfile/components/postitem.dart';
import 'package:newfile/components/toolbar.dart';
import 'package:newfile/styles/app_text.dart';

class homepage extends StatelessWidget{
  homepage({super.key});
  List<String>users=[];
  @override
  Widget build(BuildContext context) {
    mockusersfromserver();
    // TODO: implement build
    return Scaffold(
      appBar: ashbar(title: "home",actions:[IconButton(onPressed: (){}, icon: Icon(Icons.menu)),IconButton(onPressed: (){}, icon: Icon(Icons.settings)),IconButton(onPressed: (){
        Navigator.of(context).pushNamed('/nearbypage');
      }, icon:Icon(Icons.location_on_outlined))]),
        body:ListView.builder(itemBuilder:(context,index){
          return postitem(user:users[index]);


        },
    ),
    );
  }
//kabhi bhi helper functions ka use nahi karna chahiye to create a widget bcoz usme mujhe context lene ka option nahi milega

  mockusersfromserver(){
    for(var i=0;i<20;i++){
      users.add('user number $i');
    }

  }
}

