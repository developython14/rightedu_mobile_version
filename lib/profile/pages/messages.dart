import 'package:flutter/material.dart';

class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/0.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha Belkassem',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
            subtitle: Text(
                'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}
