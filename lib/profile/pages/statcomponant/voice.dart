// ignore_for_file: prefer_const_constructoimport 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class authentifaction {
  static final _auth = LocalAuthentication();

  static Future<bool> authentifcate() async {
    final is_avalaible = await _auth.canCheckBiometrics;
    if (!is_avalaible) {
      return false;
    }
    ;

    try {
      return await _auth.authenticate(localizedReason: 'scan you foot');
    } on PlatformException catch (e) {
      return false;
    }
  }
}

testava() async {
  final _auth = LocalAuthentication();
  final is_avalaible = await _auth.canCheckBiometrics;
}

testprint() async {
  print('start correctly');
  final _auth = LocalAuthentication();
  try {
    final bool didAuthenticate = await _auth.authenticate(
        localizedReason: 'Please authenticate to show account balance',
        options: const AuthenticationOptions(useErrorDialogs: false));
    // ···
  } on PlatformException catch (e) {
    print(e);
  }
}

class mustapha extends StatefulWidget {
  const mustapha({Key? key}) : super(key: key);

  @override
  State<mustapha> createState() => _mustaphaState();
}

class _mustaphaState extends State<mustapha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('free'),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: testava, child: Text('test avalability ')),
          ElevatedButton(onPressed: testprint, child: Text('test footprint '))
        ]),
      ),
    );
  }
}
