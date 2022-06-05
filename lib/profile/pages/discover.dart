import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/compenant/post_widget.dart';

class discover extends StatefulWidget {
  const discover({Key? key}) : super(key: key);

  @override
  State<discover> createState() => _discoverState();
}

class _discoverState extends State<discover> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          post_widget('mustapha belkassem', 'assets/start_app/moh.jpg',
              'assets/start_app/samir.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('mustapha fares', 'assets/start_app/0.jpg',
              'assets/start_app/moh.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('taboukyout yassine', 'assets/start_app/1.jpg',
              'assets/start_app/samir.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('mustapha ahmed', 'assets/start_app/2.jpg',
              'assets/start_app/fares.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('mustapha hadjer', 'assets/start_app/3.jpg',
              'assets/start_app/0.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('mustapha fares', 'assets/start_app/0.jpg',
              'assets/start_app/1.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('taboukyout yassine', 'assets/start_app/1.jpg',
              'assets/start_app/zaki12.jpg'),
          SizedBox(
            height: 20,
          ),
          post_widget('mustapha ahmed', 'assets/start_app/2.jpg',
              'assets/start_app/moh.jpg'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
