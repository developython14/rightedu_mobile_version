import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class wait extends StatefulWidget {
  const wait({Key? key}) : super(key: key);

  @override
  State<wait> createState() => _waitState();
}

class _waitState extends State<wait> {
  void data() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushNamed(context, '/intro');
  }

  @override
  void initState() {
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SpinKitWanderingCubes(
      size: 150,
    )));
  }
}
