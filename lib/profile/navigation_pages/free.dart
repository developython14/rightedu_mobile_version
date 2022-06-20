import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class free extends StatefulWidget {
  const free({Key? key}) : super(key: key);

  @override
  State<free> createState() => _freeState();
}

class _freeState extends State<free> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/start_app/samir.jpg',
                      width: 200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Samir Belkassem',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'pizza cooker',
                      style: TextStyle(color: Color.fromARGB(255, 87, 85, 85)),
                    ),
                    GFButton(
                      onPressed: () {},
                      text: "Hire Me",
                      shape: GFButtonShape.pills,
                      size: GFSize.LARGE,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
