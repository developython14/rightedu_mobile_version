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
                onPressed: () {},
                text: "signup as student",
                shape: GFButtonShape.pills,
              ),
              GFButton(
                onPressed: () {},
                text: "signup as moderator",
                shape: GFButtonShape.pills,
              ),
              GFButton(
                onPressed: () {},
                text: "signup as professeur",
                shape: GFButtonShape.pills,
              ),
            ]),
      ),
    );
  }
}
