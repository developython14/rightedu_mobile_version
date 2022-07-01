import 'package:flutter/material.dart';
import 'package:right/main_screen/main_screen.dart';
import 'package:right/loginpage/login.dart';
import 'package:right/intro_screen/intro.dart';
import 'package:right/intro_screen/wait.dart';
import 'package:right/profile/navigation_pages/free.dart';
import 'package:right/profile/pages/edit_profile/add_card_pay.dart';
import 'package:right/signup_pages/signup.dart';
import 'package:right/signup_pages/signup_mod.dart';
import 'package:right/test.dart';
import 'package:right/intro_screen/intersec_signup.dart';
import 'package:right/test/test_push.dart';
import 'package:right/test/test_send.dart';
import 'package:right/profile/home.dart';
import 'package:right/profile/navigation_pages/list_experts.dart';
import 'package:right/profile/navigation_pages/list_services.dart';
import 'package:right/profile/pages/statcomponant/example.dart';
import 'package:right/profile/navigation_pages/profilevisit.dart';
import 'package:right/profile/navigation_pages/free.dart';
import 'package:right/profile/navigation_pages/training.dart';
import 'package:right/profile/pages/edit_profile/editprofile.dart';
import 'package:right/profile/pages/edit_profile/settingprofile.dart';
import 'package:right/profile/pages/edit_profile/hisprofile.dart';
import 'package:right/profile/pages/edit_profile/payprofile.dart';
import 'package:right/profile/pages/edit_profile/helpprofile.dart';
import 'package:right/profile_mod/home_mod.dart';
import 'package:right/profile/pages/statcomponant/projectstatus.dart';
import 'package:right/profile/pages/statcomponant/chatscreen.dart';
import 'package:right/profile/pages/statcomponant/voice.dart';

void main() {
  runApp(
      MaterialApp(title: 'Right Hacker', initialRoute: '/audiotest', routes: {
    '/login': (context) => login(),
    '/signup': (context) => signup(),
    '/signupmod': (context) => signupmod(),
    '/intro': (context) => toma(),
    '/wait': (context) => wait(),
    '/free': (context) => univs(),
    '/intersignup': (context) => intersignup(),
    '/testsend': (context) => testsend(),
    '/testpush': (context) => testpush(),
    "/start": (context) => home(),
    "/experts": (context) => list_experts(),
    "/services": (context) => list_services(),
    "/product": (context) => lop,
    "/visprofile": (context) => profilevist(),
    "/stat": (context) => resume(),
    "/right": (context) => right(),
    "/editprofile": (context) => editprofile(),
    "/settingprofile": (context) => settingprofile(),
    "/hisprofile": (context) => hisprofile(),
    "/payprofile": (context) => payprofile(),
    "/helpprofile": (context) => helpprofile(),
    "/addcard": (context) => addcard(),
    "/homemod": (context) => homemod(),
    "/chat": (context) => chatscreen(),
    "/projectstatus": (context) => VideoPlayerScreen(),
    "/audiotest": (context) => audioscrenn(),
    "/freewec": (context) => PlayerOnProgress(),
  }));
}
