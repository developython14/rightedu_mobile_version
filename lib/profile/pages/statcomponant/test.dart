import 'package:flutter/material.dart';

class hacker extends StatefulWidget {
  const hacker({Key? key}) : super(key: key);

  @override
  State<hacker> createState() => _hackerState();
}

class _hackerState extends State<hacker> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animation;
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    animation = Tween<Offset>(begin: Offset(1, 1), end: Offset(0, 0)).animate(
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
          title: Text('learn tomahook'),
        ),
        body: AnimatedList(
          initialItemCount: 10,
          key: _listKey,
          itemBuilder: (BuildContext context, index, _animation) {
            return SlideTransition(
              position: animation,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('One-line with free fire widget'),
                  ),
                ),
              ),
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
      appBar: AppBar(
        title: Text('text me '),
      ),
    );
  }
}
