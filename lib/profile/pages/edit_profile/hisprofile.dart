import 'package:flutter/material.dart';

class hisprofile extends StatefulWidget {
  const hisprofile({Key? key}) : super(key: key);

  @override
  State<hisprofile> createState() => _hisprofileState();
}

class _hisprofileState extends State<hisprofile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [
              Icon(Icons.history),
              Text('history'),
            ],
          ),
          bottom: TabBar(tabs: [Text('packag'), Text('packag')]),
        ),
        body: Center(
          child: TabBarView(children: [Text('algeria '), Text('france')]),
        ),
      ),
    );
  }
}
