// ignore_for_file: prefer_const_constructoimport 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

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
        title: Text('new  york'),
      ),
    );
  }
}
