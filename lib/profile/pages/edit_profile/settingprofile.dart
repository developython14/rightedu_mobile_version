import 'package:flutter/material.dart';

class settingprofile extends StatefulWidget {
  const settingprofile({Key? key}) : super(key: key);

  @override
  State<settingprofile> createState() => _settingprofileState();
}

class _settingprofileState extends State<settingprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setting profile'),
        centerTitle: true,
      ),
      body: Center(child: Text('setting profile')),
    );
  }
}
