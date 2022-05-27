import 'package:flutter/material.dart';

class notification extends StatefulWidget {
   const notification({
    super.key,
    required this.camera,
  });
  final CameraDescription camera;


  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('hena rah ndir te3 notification'),
      ),
    );
  }
}
