import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List cards = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  Widget my = Card(
    color: Colors.cyan,
    child: Column(children: [
      Text('software developper'),
      Text("hacker ethical "),
      Text("belkassemi")
    ]),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 225,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return my;
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: cards.length,
          )),
    );
  }
}
