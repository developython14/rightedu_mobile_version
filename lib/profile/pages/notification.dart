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
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    shadowColor: Colors.grey,
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/start_app/moh.jpg",
          height: 80.0,
          width: 80.0,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text("Belkassem Mustapha", style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
      ),
      Text('software developper'),
      SizedBox(
        height: 10,
      ),
      GFButton(
        onPressed: () {},
        text: "contact",
        shape: GFButtonShape.pills,
      ),
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
