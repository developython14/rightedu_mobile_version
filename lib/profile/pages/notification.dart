import 'package:flutter/material.dart';

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
      height: 200,
      child: Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Colors.red,
          shadowColor: Colors.blue,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/start_app/moh.jpg', width: 80.0),
              ),
              Text('mustapha belkassem00'),
              Text("belkassse")
            ],
          )),
    ));
  }
}
