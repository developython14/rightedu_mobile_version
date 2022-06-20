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
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('belkassem mustapha')),
        body: Column(children: [
          Card(
            elevation: 20,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  "assets/start_app/samir.jpg",
                  width: 100,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Belkassem Samir",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Software Developper",
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
          )
        ]));
  }
}
