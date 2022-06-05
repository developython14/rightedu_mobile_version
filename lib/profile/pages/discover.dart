import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/start_app/moh.jpg"),
                          ),
                          Text("Mustpha Belkassem")
                        ],
                      )),
                      Icon(Icons.add_a_photo)
                    ]),
                Image.asset(
                  "assets/start_app/moh.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                ),
                Row(
                  children: [
                    GFButton(
                      onPressed: () {},
                      text: "like",
                      icon: Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
