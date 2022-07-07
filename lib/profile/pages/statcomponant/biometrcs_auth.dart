// ignore_for_file: prefer_const_constructoimport 'dart:async';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'dart:io';
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
      body: Center(
        child: GFButton(
          color: GFColors.INFO,
          onPressed: testprint,
          text: "Biometrics Test",
          blockButton: true,
          size: GFSize.LARGE,
        ),
      ),
    );
  }
}
