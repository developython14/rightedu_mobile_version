import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class free extends StatefulWidget {
  const free({Key? key}) : super(key: key);

  @override
  State<free> createState() => _freeState();
}

class _freeState extends State<free> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('packa')),
      body: Center(
        child: AspectRatio(
          aspectRatio: 5 / 2,
          child: Image.asset(
            'assets/start_app/moh.jpg',
            width: 150,
            height: 350,
          ),
        ),
      ),
    );
  }
}
