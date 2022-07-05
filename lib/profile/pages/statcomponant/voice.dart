import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'dart:io';

class mustapha extends StatefulWidget {
  const mustapha({Key? key}) : super(key: key);

  @override
  State<mustapha> createState() => _mustaphaState();
}

class _mustaphaState extends State<mustapha> {
  Color _color = Color.fromARGB(255, 212, 9, 117);
  double _width = 200;
  double _height = 300;
  Duration duree = Duration(seconds: 5);
  bool isanimated = false;
  bool isanimated1 = false;
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn free'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TweenAnimationBuilder(
              child: Text(
                'mustapha belkassem ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              tween: Tween<double>(begin: 0, end: 300),
              duration: duree,
              builder: (BuildContext context, double size, Widget? child) {
                return Container(
                  color: _color,
                  width: size,
                  child: child,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
