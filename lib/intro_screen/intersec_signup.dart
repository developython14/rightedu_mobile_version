import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class intersignup extends StatefulWidget {
  const intersignup({Key? key}) : super(key: key);

  @override
  State<intersignup> createState() => _intersignupState();
}

class _intersignupState extends State<intersignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              GFButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                text: "signup as student",
                icon: Icon(Icons.school),
                type: GFButtonType.transparent,
              ),
              GFButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                text: "signup as moderator",
                icon: Icon(Icons.school),
                type: GFButtonType.transparent,
              ),
              GFButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                text: "signup as professeur",
                icon: Icon(Icons.school),
                type: GFButtonType.transparent,
              ),
            ]),
      ),
    );
  }
}
