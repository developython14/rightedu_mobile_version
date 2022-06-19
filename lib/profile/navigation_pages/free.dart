import 'package:flutter/material.dart';

class free extends StatefulWidget {
  const free({Key? key}) : super(key: key);

  @override
  State<free> createState() => _freeState();
}

class _freeState extends State<free> {
  String? email = 'mus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('mustapha dynamique')),
      body: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder()),
            onChanged: (text) {
              setState(() {
                email = text;
              });
            },
          ),
          email == 'mustapha'
              ? Image.asset('assets/start_app/mustapha.jpg')
              : Text('machi mustapha')
        ],
      ),
    );
  }
}
