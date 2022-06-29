import 'package:flutter/material.dart';
import 'package:right/profile/pages/statcomponant/chatcomponant/chatinput.dart';

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.45),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhm😍😍😍 free',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 178, 167, 167),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv elhmdoulh cv elhmdoulh cv ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.45),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf   blakssem',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf sdasdasdasdasdsawsfdsfdsfdsfds  ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf ❤️❤️❤️❤️ sdasdasdasdasdsawsfdsfdsfdsfds  sdasdasdasdasdsawsfdsfdsfdsfdssdasdasdasdasdsawsfdsfdsfdsfdssdasdasdasdasdsawsfdsfdsfdsfdssdasdasdasdasdsawsfdsfdsfdsfdsdsshhk',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf   free',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf   blakssem',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf sdasdasdasdasdsawsfdsfdsfdsfds  ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf sdasdasdasdasdsawsfdsfdsfdsfds  sdasdasdasdasdsawsfdsfdsfdsfdssdasdasdasdasdsawsfdsfdsfdsfdssdasdasdasdasdsawsfdsfdsfdsfdssdasdasdasdasdsawsfdsfdsfdsfdsdsshhk',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf   free',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf   blakssem',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf sdasdasdasdasdsawsfdsfdsfdsfds  ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'salam alikom cv',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'elhmdoulh cv hb hb ce sf   wa3ra denia ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )),
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                      ),
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
