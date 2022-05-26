import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('hena rah ndir te3 notification'),
    );
  }
}
