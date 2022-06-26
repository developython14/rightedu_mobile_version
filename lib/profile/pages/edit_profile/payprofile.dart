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
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.monetization_on,
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Payments',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(child: Text('pay profile')),
    );
  }
}
