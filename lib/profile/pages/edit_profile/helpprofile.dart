import 'package:flutter/material.dart';

class helpprofile extends StatefulWidget {
  const helpprofile({Key? key}) : super(key: key);

  @override
  State<helpprofile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<helpprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('help profile'),
        centerTitle: true,
      ),
      body: Center(child: Text('HELP profile')),
    );
  }
}
