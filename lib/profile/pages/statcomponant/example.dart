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
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 200,
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blue,
                tabs: [
                  Tab(
                    icon: Icon(Icons.phone_android),
                    text: "algeria",
                  ),
                  Tab(icon: Icon(Icons.phone_iphone), text: "egypt"),
                  Tab(icon: Icon(Icons.phone_iphone), text: "malysia"),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              child: TabBarView(
                children: [
                  Center(child: Text("yacine taboukyout")),
                  Center(child: Text("mustapha belkassem 24 ans")),
                  Center(child: Text("mustapha algeria 24 ans")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
