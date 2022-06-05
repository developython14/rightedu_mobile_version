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
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                        ),
                        onPressed: () {},
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
                      text: "Like",
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                      ),
                    ),
                    GFButton(
                        onPressed: () {},
                        text: "Comment",
                        icon: Icon(Icons.comment)),
                    GFButton(
                      onPressed: () {},
                      text: "Share",
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
