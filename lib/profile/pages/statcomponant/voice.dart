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
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
              title: Text('One-line with leading widget'),
              trailing: Icon(Icons.more_vert),
              leading: Hero(
                  tag: 'free',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/start_app/fares.jpg',
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

class _detailsState extends State<details> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animationcolor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animationcolor =
        ColorTween(begin: Colors.blue, end: Colors.green).animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      print(_controller.value);
      print(_animationcolor.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('responsabilite')),
      body: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Hero(
                tag: 'free',
                child: Image.asset(
                  'assets/start_app/fares.jpg',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )),
          Text(
              ' dskddlsdls kldsl;dksa;ld kdos;adks dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;ldsal;dska  dskddlsdls kldsl dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;ldsal;dska  dskddlsdls kldsl dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;ldsal;dska  dskddlsdls kldsl dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;ldsal;dska  dskddlsdls kldsla; k;sa;ldsa;ldsal;dska  dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;  dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;  dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;lds  dskddlsdls k  dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;ldsl;dksa;ld kdos;adksa; k;sa;ldsa;  dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;  dskddlsdls kldsl;dksa;ld kdos;adksa; k;sa;ldsa;lds'),
          AnimatedBuilder(
            animation: _controller,
            builder: (
              BuildContext context,
              _,
            ) {
              return Container(
                width: 200,
                height: 90,
                color: _animationcolor.value,
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                _controller.forward();
              },
              child: Text('multi free'))
        ],
      ),
    );
  }
}
