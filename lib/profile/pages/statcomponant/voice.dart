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
              tween: Tween<double>(begin: 0, end: 33),
              duration: duree,
              builder: (BuildContext context, double size, Widget? child) {
                return Container(
                  color: _color,
                  width: size,
                  child: child,
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            Text('Mustapha Belkassem'),
            SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {},
              title: Text('One-line with leading widget'),
              trailing: Icon(Icons.more_vert),
              leading: Hero(
                  tag: 'free',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(23),
                    child: Image.asset(
                      'assets/start_app/moh.jpg',
                      height: 80,
                      width: 80,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('responsabilite')),
      body: Center(child: Text('cree')),
    );
  }
}
