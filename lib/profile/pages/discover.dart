import 'package:flutter/material.dart';

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
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(children: [
                  Container(
                      child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/start_app/moh.jpg"),
                      ),
                      Text("Mustpha Belkassem")
                    ],
                  )),Icon(Icons.)
                ])
              ],
            ),
          )
        ],
      ),
    ));
  }
}
