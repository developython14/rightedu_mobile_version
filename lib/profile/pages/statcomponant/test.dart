import 'package:flutter/material.dart';

class hacker extends StatefulWidget {
  const hacker({Key? key}) : super(key: key);

  @override
  State<hacker> createState() => _hackerState();
}

class _hackerState extends State<hacker> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    animation = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0)).animate(
      _controller,
    );
    _controller.forward();
  }

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
        title: Text('learn animation'),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          SlideTransition(
              position: animation,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  color: Colors.amber)),
          SlideTransition(
              position: animation,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  color: Colors.deepOrange)),
          SlideTransition(
              position: animation,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  color: Colors.deepPurple)),
          ElevatedButton(
              onPressed: () {
                _controller.forward();
              },
              child: Text('push'))
        ],
      )),
    );
  }
}
