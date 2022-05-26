import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:right/profile/pages/discover.dart';
import 'package:right/profile/pages/main.dart';
import 'package:right/profile/pages/messages.dart';
import 'package:right/profile/pages/profile.dart';
import 'package:right/profile/pages/notification.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selected_index = 0;
  List texts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('mustapha test'),
        ),
        body: Center(
            child: Text("doka rana f index $texts.elementAt(selected_index)")),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: selected_index, //optional, default as 0
          onTap: _set_index,
        ));
  }

  void _set_index(int value) {
    setState(() {
      selected_index = value;
      print(selected_index);
    });
  }
}
