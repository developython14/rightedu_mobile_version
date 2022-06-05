import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class post_widget extends StatelessWidget {
  const post_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Color.fromARGB(255, 211, 211, 211),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/start_app/moh.jpg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Mustapha Belkassem",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('02/04/1998')
                            ],
                          )
                        ],
                      )),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                        ),
                        onPressed: () {},
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'mustapha fdsqfdqsfdsqfdqsbfsddsqfdsqfdqfdsqfdsqfsdqfsqdfsqfsqelkassem mfdsqfdqsfdsqfdqsbfsddsqfdsqfdqfdsqfdsqfsdqfsqdfsqfsqelkassemfdsqfdqsfdsqfdqsbfsddsqfdsqfdqfdsqfdsqfsdqfsqdfsqfsqelkassem'),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/start_app/fares.jpg",
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GFButton(
                      onPressed: () {},
                      text: "Like",
                      color: Colors.blue,
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                      ),
                    ),
                    GFButton(
                        onPressed: () {},
                        text: "Comment",
                        color: Colors.blue,
                        icon: Icon(
                          Icons.comment,
                          color: Colors.white,
                        )),
                    GFButton(
                      onPressed: () {},
                      text: 'Share',
                      color: Colors.blue,
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
