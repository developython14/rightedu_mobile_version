import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  TabController tabcon = TabController(length: 6, vsync: this)
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      TabBar(
        controller: tabcon,
        tabs: [
          Tab(
            text: "Starters",
          ),
          Tab(
            text: "Main Course",
          ),
          Tab(
            text: "Desserts",
          ),
          Tab(
            text: "Snacks",
          ),
          Tab(
            text: "Drinks",
          ),
          Tab(
            text: "Fast Foods",
          ),
        ],
        isScrollable: true,
        indicatorColor: Colors.deepOrange,
      ),
      TabBarView(
        controller: tabcon,
        children: const <Widget>[
          Text("Starters"),
          Text("Main Course"),
          Text("Desserts"),
          Text("Snacks"),
          Text("Drinks"),
          Text("first"),
        ],
      ),
    ]));
  }
}
