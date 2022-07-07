// ignore_for_file: prefer_const_constructoimport 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';

testava() async {
  final _auth = LocalAuthentication();
  final is_avalaible = await _auth.canCheckBiometrics;
}

class biometrics extends StatefulWidget {
  const biometrics({Key? key}) : super(key: key);

  @override
  State<biometrics> createState() => _biometricsState();
}

class _biometricsState extends State<biometrics> {
  testprint() async {
    final _auth = LocalAuthentication();
    try {
      final bool didAuthenticate = await _auth.authenticate(
          localizedReason: 'Please authenticate to  verfier ',
          options: const AuthenticationOptions(useErrorDialogs: false));
      if (didAuthenticate) {
        Navigator.pushNamed(context, '/stat');
      }
      ;

      // ···
    } on PlatformException catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('biometrics test '),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 200,
          ),
          GFButton(
            onPressed: testprint,
            text: "Biometrics Test",
            blockButton: true,
          ),
        ]),
      ),
    );
  }
}
