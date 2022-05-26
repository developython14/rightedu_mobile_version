import 'package:flutter/material.dart';

class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('hena rah ndir te3 messages'),
    );
  }
}
