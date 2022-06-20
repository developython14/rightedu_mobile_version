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
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('packa')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/start_app/moh.jpg',
              width: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/start_app/moh.jpg',
              width: 350,
            ),
          ],
        ),
      ),
    );
  }
}
