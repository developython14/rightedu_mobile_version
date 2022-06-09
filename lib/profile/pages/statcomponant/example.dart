import 'package:flutter/material.dart';

class mus extends StatefulWidget {
  const mus({Key? key}) : super(key: key);

  @override
  State<mus> createState() => _musState();
}

class _musState extends State<mus> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: "android",
              ),
              Tab(icon: Icon(Icons.phone_iphone), text: "iphone"),
            ],
          ),
        ),
        body: Column(
          children: [
            TabBarView(
              children: [
                Text("algeria 1"),
                Text("algeria vs 222 2"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
