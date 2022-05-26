import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mustapha test'),
      ),
      body: Center(child: Text("doka rana f index$selected_index")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'switch',
          ),
        ],
        currentIndex: selected_index,
        selectedItemColor: Color.fromARGB(255, 228, 191, 142),
        unselectedItemColor: Color.fromARGB(255, 7, 255, 255),
        onTap: _set_index,
      ),
    );
  }

  void _set_index(int value) {
    setState(() {
      selected_index = value;
      print(selected_index);
    });
  }
}
