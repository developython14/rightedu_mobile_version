import 'package:flutter/material.dart';

class hisprofile extends StatefulWidget {
  const hisprofile({Key? key}) : super(key: key);

  @override
  State<hisprofile> createState() => _hisprofileState();
}

class _hisprofileState extends State<hisprofile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.history,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'History',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          bottom: TabBar(tabs: [
            Row(
              children: [
                Icon(
                  Icons.cleaning_services,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Services',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.podcasts,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Posts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        ),
        body: Center(
          child: TabBarView(children: [Text('algeria '), Text('france')]),
        ),
      ),
    );
  }
}
