import 'package:flutter/material.dart';
import 'package:right/profile/pages/statcomponant/chatcomponant/chatinput.dart';
import 'package:right/profile/pages/statcomponant/chatcomponant/messagechat.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.fluttercampus.com/video.mp4');

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 300,
                                child: FutureBuilder(
                                  future: _initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      // If the VideoPlayerController has finished initialization, use
                                      // the data it provides to limit the aspect ratio of the video.
                                      return AspectRatio(
                                        aspectRatio:
                                            _controller.value.aspectRatio,
                                        // Use the VideoPlayer widget to display the video.
                                        child: VideoPlayer(_controller),
                                      );
                                    } else {
                                      // If the VideoPlayerController is still initializing, show a
                                      // loading spinner.
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Positioned(
                                  top: 250,
                                  child: IconButton(
                                    onPressed: () {
                                      // Wrap the play or pause in a call to `setState`. This ensures the
                                      // correct icon is shown.
                                      setState(() {
                                        // If the video is playing, pause it.
                                        if (_controller.value.isPlaying) {
                                          _controller.pause();
                                        } else {
                                          // If the video is paused, play it.
                                          _controller.play();
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 300,
                                child: FutureBuilder(
                                  future: _initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      // If the VideoPlayerController has finished initialization, use
                                      // the data it provides to limit the aspect ratio of the video.
                                      return AspectRatio(
                                        aspectRatio:
                                            _controller.value.aspectRatio,
                                        // Use the VideoPlayer widget to display the video.
                                        child: VideoPlayer(_controller),
                                      );
                                    } else {
                                      // If the VideoPlayerController is still initializing, show a
                                      // loading spinner.
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Positioned(
                                  top: 250,
                                  child: IconButton(
                                    onPressed: () {
                                      // Wrap the play or pause in a call to `setState`. This ensures the
                                      // correct icon is shown.
                                      setState(() {
                                        // If the video is playing, pause it.
                                        if (_controller.value.isPlaying) {
                                          _controller.pause();
                                        } else {
                                          // If the video is paused, play it.
                                          _controller.play();
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    recivedmessage(
                      "gooll rebhnagsgdfgfsdgfsdfg???",
                    ),
                    datearker(),
                    recivedmessage(
                      "gooll allez les gars???",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Stack(
                            children: [
                              Container(
                                  width: 200,
                                  height: 300,
                                  child: Image.asset(
                                    "assets/start_app/cover.jpg",
                                  )),
                            ],
                          ),
                        ),
                      ),
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
