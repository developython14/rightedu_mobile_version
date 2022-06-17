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
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/start_app/covert.jpg',
                        height: 300,
                      )),
                  Positioned(
                    left: 120,
                    top: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/start_app/mustapha.jpg',
                          width: 150,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        )),
      ),
    );
  }
}
