import 'package:flutter/material.dart';
import 'package:right/main_screen/main_screen.dart';
import 'package:right/loginpage/login.dart';
import 'package:right/intro_screen/intro.dart';
import 'package:right/intro_screen/wait.dart';
import 'package:right/signup_pages/signup.dart';
import 'package:right/signup_pages/signup_mod.dart';
import 'package:right/test.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

void main() {
  runApp(
      MaterialApp(title: 'right Hacker', initialRoute: '/signupmod', routes: {
    '/login': (context) => login(),
    '/signup': (context) => signup(),
    '/signupmod': (context) => signupmod(),
    '/intro': (context) => toma(),
    '/wait': (context) => wait(),
    '/free': (context) => univs(),
  }));
}
