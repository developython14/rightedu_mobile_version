import 'package:flutter/material.dart';

class mus extends StatefulWidget {
  const mus({Key? key}) : super(key: key);

  @override
  State<mus> createState() => _musState();
}

class _musState extends State<mus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://evening-savannah-43647.herokuapp.com/static/img/image_slide/3.jpg'),
      ),
    );
  }
}
