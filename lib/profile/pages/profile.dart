import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(children: [
      Image.asset("assets/start_app/fares.jpg"),
      Row(
        children: [
          Text("mustapha"),
          Text("belka"),
          Text("aboone"),
        ],
      )
    ])));
  }
}
