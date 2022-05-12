import 'package:flutter/material.dart';

// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class testpush extends StatelessWidget {
  const testpush({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // When the user taps the button,
          // navigate to a named route and
          // provide the arguments as an optional
          // parameter.
          Navigator.pushNamed(
            context,
            "/testsend",
            arguments: ScreenArguments(
              'mustapha belkassem',
              'big developperu and data scienctist from the great algeria .',
            ),
          );
        },
        child: const Text('try send the data '),
      ),
    );
  }
}
