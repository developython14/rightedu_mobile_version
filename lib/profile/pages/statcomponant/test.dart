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
            duration: Duration(milliseconds: 1200),
            child: Text(
              'Mustapha Belkassem',
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

class mustapha extends StatefulWidget {
  const mustapha({Key? key}) : super(key: key);

  @override
  State<mustapha> createState() => _mustaphaState();
}

class _mustaphaState extends State<mustapha> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('TEST INTERNET'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a internet alert test.'),
                Container(
                  child: CircularProgressIndicator(),
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yacine'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: _showMyDialog, child: Text("push"))
        ],
      ),
    );
  }
}
