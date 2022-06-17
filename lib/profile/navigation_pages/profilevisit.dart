import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
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
              height: 10,
            ),
            Text(
              'Software Enginner',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            GFRating(
              value: 3.5,
              color: Colors.yellow,
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.wallet,
                        size: 50,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        size: 50,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarms,
                        size: 50,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_box,
                        size: 50,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
