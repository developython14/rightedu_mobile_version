import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profilevist extends StatefulWidget {
  const profilevist({Key? key}) : super(key: key);

  @override
  State<profilevist> createState() => _profilevistState();
}

class _profilevistState extends State<profilevist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset('assets/start_app/covert.jpg')),
                Positioned(
                  left: 120,
                  top: 155,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(
                        'assets/start_app/mustapha.jpg',
                        width: 150,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mustapha Belkassem',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Software Enginner',
              style: TextStyle(color: Colors.grey),
            )
          ],
        )),
      ),
    );
  }
}
