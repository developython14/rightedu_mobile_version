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
          centerTitle: true,
          title: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 500),
            child: Text(
              'Mustapha Belkassem',
              style: TextStyle(color: Colors.red),
            ),
            builder: (context, double value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
          ),
        ),
        body: AnimatedList(
          initialItemCount: 20,
          key: _listKey,
          itemBuilder: (BuildContext context, index, _animation) {
            return SlideTransition(
              position: animation,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/testme');
                    },
                    leading: Hero(
                      tag: 'himus',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/start_app/fares.jpg'),
                      ),
                    ),
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
        title: Text('text me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'himus',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/start_app/fares.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              'belkassem mustapha cest grand gflgfjskglsjgkgflgfjskglsjggflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdlfdjsgklfd;gksdfl')
        ]),
      ),
    );
  }
}
