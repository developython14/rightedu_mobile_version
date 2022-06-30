import 'package:flutter/material.dart';
import 'package:right/profile/pages/statcomponant/chatcomponant/chatinput.dart';
import 'package:right/profile/pages/statcomponant/chatcomponant/messagechat.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/start_app/samir.jpg",
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Samir Belkassem",
                    style: TextStyle(),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(color: Colors.greenAccent),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_call_outlined,
                size: 32,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                size: 32,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 32,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    datearker(),
                    sendermessage(
                      "Samir Belkassem cv kho ???",
                    ),
                    recivedmessage(
                      "Samir Belkassem fasdfsfsd cv kho ???",
                    ),
                    sendermessage(
                      "Samir mustapha belkassem cv kho ???",
                    ),
                    recivedmessage(
                      "salam alikom khoya cv hb labas???",
                    ),
                    sendermessage(
                      "salam alikom khoya cv hb labasintikc sjsksls???",
                    ),
                    recivedmessage(
                      "bien et vs???",
                    ),
                    datearker(),
                    sendermessage(
                      "ghaya  et algerie???",
                    ),
                    datearker(),
                    sendermessage(
                      "Samir   ???",
                    ),
                    recivedmessage(
                      "gooll rebhna???",
                    ),
                    sendermessage(
                      "gooll rebhna abid s???",
                    ),
                    recivedmessage(
                      "gooll rebhna???",
                    ),
                    sendermessage(
                      "gooll rebhna???",
                    ),
                    recivedmessage(
                      "gooll rebhna???",
                    ),
                    datearker(),
                    sendermessage(
                      "gooll rebhna???",
                    ),
                    datearker(),
                    recivedmessage(
                      "gooll rebhnagsgdfgfsdgfsdfg???",
                    ),
                    datearker(),
                    recivedmessage(
                      "gooll rebhnagsgdfgfsdgfsrebhnagsgdfgfsdgfsdfgrebhnagsgdfgfsdgfsdfgdfg???",
                    )
                  ],
                ),
              ),
            ),
          ),
          ChatInputField()
        ],
      ),
    );
  }
}
