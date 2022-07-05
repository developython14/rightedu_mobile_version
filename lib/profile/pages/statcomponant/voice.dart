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
        title: Text('Learn Animation'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            AnimatedContainer(
              duration: duree,
              width: _width,
              height: _height,
              color: _color,
            ),
            ElevatedButton(
                onPressed: () {
                  if (isanimated == false) {
                    setState(() {
                      _width = 350;
                      _height = 500;
                      _color = Color.fromARGB(255, 197, 89, 82);
                      isanimated = true;
                    });
                  } else {
                    setState(() {
                      _width = 200;
                      _height = 300;
                      _color = Color.fromARGB(255, 184, 255, 186);
                      isanimated = false;
                    });
                  }
                },
                child: Text('Animate continer')),
            SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: duree,
              child: Container(
                width: 30,
                height: 50,
                color: _color,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (isanimated1 == false) {
                    setState(() {
                      _opacity = 0;
                      isanimated1 = true;
                    });
                  } else {
                    setState(() {
                      _opacity = 1;
                      isanimated1 = false;
                    });
                  }
                },
                child: Text('control opacity'))
          ],
        ),
      ),
    );
  }
}
