import 'package:flutter_svg/svg.dart';
import 'package:newfile/components/toolbar.dart';
import 'package:newfile/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfile/pages/profilepage.dart';
import 'package:newfile/styles/app_colors.dart';

class mainpage extends StatefulWidget{
  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  menu currentindex=menu.home;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: pages[currentindex.index],
      bottomNavigationBar:ashbabenavbar(currentIndex: currentindex.index ,
        onTap: (value){
        setState((){
        currentindex=value;
      });
        },
      )
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/home.svg'), label: 'Home'),
      //     BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/heart.svg'), label: 'favourites'),
      //     BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/add.svg'), label: 'add'),
      //     BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/chatbox.svg'), label: 'Messages'),
      //     BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/Icon.svg'), label: 'ContactProfile'),
      //   ],
      //   currentIndex: currentindex, //bcoz poori state phirse run hoti hai so voh usko nahi pata chalega kki what changes has happened in the earlier stages
      //   onTap: (index) {//yeh wala index refers to the selected feature in bottom navigation bar
      //     setState(() {
      //       currentindex = index;
      //        if (index == 4) {
      //          Navigator.of(context).pushReplacementNamed('/profilepage');
      //       }
      //     });
      //   },
      //   type:BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.white,
      //
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      // )
      ,
    );
  }
    final pages=[
      homepage(),
      Center(child: Text("love")),
      Center(child: Text("Posts")),
      Center(child: Text("Messages")),
      profilepage(),

    ];//idhar this pages is a list of widgets
  //yeh sexy idea h multipages ko link karne ka



  }
enum menu{
  home,
  favourites,
  add,
  chats,
  profile
}
  class ashbabenavbar extends StatelessWidget{
  final int currentIndex;
  final ValueChanged<menu>onTap;
  const ashbabenavbar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
   return Container(
     height:87,
     margin:EdgeInsets.all(24),
     child:Stack(
         children: [
           Positioned(
             left:0,
             right:0,
             top:17,
             child: Container(
               height:70,
               decoration:BoxDecoration(
                 color:Colors.grey,
                 borderRadius: BorderRadius.all(Radius.circular(25))),
                 child:Row(
                   children: [
                     Expanded(child: IconButton(
                       onPressed:()=> onTap(menu.home),
                      icon: SvgPicture.asset('assets/svg/home.svg',
                      colorFilter:ColorFilter.mode(
                          currentIndex==menu.home? Colors.blue:Colors.black.withOpacity(0.3),BlendMode.srcIn) ,))),

                     Expanded(child: IconButton(
                     onPressed:()=> onTap(menu.favourites),icon: SvgPicture.asset('assets/svg/heart.svg',colorFilter:ColorFilter.mode(
    currentIndex==menu.favourites? Colors.blue:Colors.black.withOpacity(0.3),BlendMode.srcIn) ,))),
                     Expanded(child: Container()),//taaki space optimise ho sake
                     //we could have even used Spacer()



                     Expanded(child: IconButton(
    onPressed:()=> onTap(menu.chats),
    icon: SvgPicture.asset('assets/svg/chatbox.svg',colorFilter:ColorFilter.mode(
    currentIndex==menu.chats? Colors.blue:Colors.black.withOpacity(0.3),BlendMode.srcIn) ,))),

                     Expanded(child: IconButton(
    onPressed:()=> onTap(menu.profile),
    icon: SvgPicture.asset('assets/svg/Icon.svg',colorFilter:ColorFilter.mode(
    currentIndex==menu.profile? Colors.blue:Colors.black.withOpacity(0.3),BlendMode.srcIn) ,))),
                   ],
                 )
               ),

             ),

           Positioned(
             left:0,
             right: 0,
             top:0,
             child: GestureDetector(
             onTap:() =>(menu.add),
               child: Container(
                 width:64,
                 height:64,
                 padding:EdgeInsets.all(1),
                 decoration:BoxDecoration(
                   color: AppColors.primary,
                   shape:BoxShape.circle,
                 ),
                 child:IconButton(onPressed: ()=>onTap(menu.add), icon: SvgPicture.asset("assets/svg/add.svg"),)
               ),
             ),
           )
         ],
       ),

   );

  }
}
