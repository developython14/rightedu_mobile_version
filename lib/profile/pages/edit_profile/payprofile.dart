import 'package:flutter/material.dart';

class payprofile extends StatefulWidget {
  const payprofile({Key? key}) : super(key: key);

  @override
  State<payprofile> createState() => _payprofileState();
}

class _payprofileState extends State<payprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pay profile'),
        centerTitle: true,
      ),
      body: Center(child: Text('pay profile')),
    );
  }
}
