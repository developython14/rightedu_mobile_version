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
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.settings,
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Setting',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(child: Text('setting profile')),
    );
  }
}
