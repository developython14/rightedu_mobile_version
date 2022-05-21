import 'package:flutter/material.dart';
import 'package:right/test/test_push.dart';
// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.

class testsend extends StatelessWidget {
  const testsend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("statistique mustapha"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("hadi la somme "),
            Text((args.title + args.message).toString()),
            Text("hada le produit"),
            Text((args.title * args.message).toString()),
          ],
        ),
      ),
    );
  }
}
