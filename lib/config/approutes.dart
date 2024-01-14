
import 'package:newfile/mainpage.dart';
import 'package:newfile/pages/editprofilepage.dart';
import 'package:newfile/pages/homepage.dart';
import 'package:newfile/pages/login_page.dart';
import 'package:newfile/pages/nearbypage.dart';
import '../pages/profilepage.dart';
import '../testpage.dart';

class AppRoutes {
  static final pages = {
    '/':(context) =>loginpage(),
    '/loginpage':(context) =>loginpage(),
    '/home':(context) =>homepage(),
    '/mainpage':(context) =>mainpage(),
    '/testpage':(context) =>testpage(),
    '/profilepage':(context) => profilepage(),
    '/editprofilepage':(context) => editprofilepage(),
    '/nearbypage':(context)=> nearbypage(),

  };
  //
  // static const login = '/';
  // static const home = '/home';
  // static const main = '/main';
  // static const editProfile = '/edit_profile';
  // static const nearby = '/nearby';
  // static const user = '/user';
}