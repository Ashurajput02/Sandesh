import 'package:newfile/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget{
  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BONJOUR"),
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: pages[currentindex],
      bottomNavigationBar:
      BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined), label: 'Favourites'),

          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Post'),
        ],
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
            if (index == 1) {
              Navigator.of(context).pushReplacementNamed('/loginpage');
            }
          });
        },
        backgroundColor: Colors.amber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      )
      ,
    );
  }
    final pages=[
      homepage(),
      Text("love"),
      Text("add"),
    ];

  }
