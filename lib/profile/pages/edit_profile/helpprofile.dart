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
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.help_center,
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Help',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(child: Text('HELP profile')),
    );
  }
}
