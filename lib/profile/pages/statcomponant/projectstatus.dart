import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class camerause extends StatefulWidget {
  const camerause({Key? key}) : super(key: key);

  @override
  State<camerause> createState() => _camerauseState();
}

class _camerauseState extends State<camerause> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Belkassem Mustapha')),
    );
  }
}
