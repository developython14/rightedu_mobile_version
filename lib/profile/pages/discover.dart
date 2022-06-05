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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/start_app/moh.jpg"),
                          ),
                          Text("Mustapha Belkassem")
                        ],
                      )),
                      Icon(
                        Icons.more_vert,
                      ),
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
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                      ),
                    ),
                    GFButton(
                      onPressed: () {},
                      text: "comment",
                      icon: Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                    ),
                    GFButton(
                      onPressed: () {},
                      text: "share",
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
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
