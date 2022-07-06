// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class mustapha extends StatefulWidget {
  const mustapha({Key? key}) : super(key: key);

  @override
  State<mustapha> createState() => _mustaphaState();
}

class _mustaphaState extends State<mustapha>
    with SingleTickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));
  final Tween<Offset> _offtween =
      Tween<Offset>(begin: Offset.zero, end: const Offset(1.5, 0.0));
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('free www hek'),
        ),
        body: AnimatedList(
          initialItemCount: 7,
          itemBuilder: (BuildContext, index, animation) {
            return SlideTransition(
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/freefire');
                  },
                  leading: Hero(
                    tag: 'mytag',
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset('assets/start_app/fares.jpg')),
                    ),
                  ),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
              position: _offtween.animate(animation),
            );
          },
        ));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('details screen')),
      body: Column(
        children: [
          Hero(
            tag: 'mytag',
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('assets/start_app/fares.jpg')),
          ),
          Text(
              'sffgsdhgklfdhfjghsdfjkghsdfjkghsdfjkghsdfjghldsjdfhjsdklghdfjklghsdfjkgsdjklgdfhgjkdflshgssffgsdhgklfdhfjghsdfjkghsdfjkghsdfjkghsdfjghldsjdfhjsdklghdfjklghsdfjkgsdjklgdfhgjkdflshgsdfjkghdfjgsdfjksffgsdhgklfdhfjghsdfjkghsdfjkghsdfjkghsdfjghldsjdfhjsdklghdfjklghsdfjkgsdjklgdfhgjkdflshgsdfjkghdfjgsdfjksffgsdhgklfdhfjghsdfjkghsdfjkghsdfjkghsdfjghldsjdfhjsdklghdfjklghsdfjkgsdjklgdfhgjkdflshgsdfjkghdfjgsdfjkdfjkghdfjgsdfjk'),
          ElevatedButton(onPressed: () {}, child: Text('buy'))
        ],
      ),
    );
  }
}
