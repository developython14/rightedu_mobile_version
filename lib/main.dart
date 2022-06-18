import 'package:flutter/material.dart';
import 'package:right/main_screen/main_screen.dart';
import 'package:right/loginpage/login.dart';
import 'package:right/intro_screen/intro.dart';
import 'package:right/intro_screen/wait.dart';
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

void main() {
  runApp(MaterialApp(title: 'Right Hacker', initialRoute: '/start', routes: {
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
  }));
}
