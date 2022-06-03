import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/main.dart';

class list_experts extends StatefulWidget {
  @override
  State<list_experts> createState() => _list_expertsState();
}

class _list_expertsState extends State<list_experts> {
  Widget my = Container(
      height: 300,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/start_app/samir.jpg",
                height: 80.0,
                width: 80.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Belkassem Mustapha",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text('Software Developper'),
            SizedBox(
              height: 10,
            ),
            GFButton(
              onPressed: () {},
              text: "Contact",
              shape: GFButtonShape.pills,
            ),
          ]),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my,
      my
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Experts'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: data),
    );
  }
}
