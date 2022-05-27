import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 225,
      child: Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Color.fromARGB(255, 255, 255, 255),
          shadowColor: Colors.blue,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image.asset('assets/start_app/fares.jpg', width: 80.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'mustapha belkassem',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("software enginer"),
              SizedBox(
                height: 10,
              ),
              GFButton(
                onPressed: () {},
                text: "contact",
                shape: GFButtonShape.pills,
              ),
            ],
          )),
    ));
  }
}
