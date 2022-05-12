import 'package:flutter/material.dart';

// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class testsend extends StatelessWidget {
  const testsend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("hada first messge"),
            Text(args.title),
            Text("hada second messge"),
            Text(args.message),
          ],
        ),
      ),
    );
  }
}
