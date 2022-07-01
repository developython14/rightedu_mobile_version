import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
        'https://www.fluttercampus.com/video.mp4');

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Container(
                width: 250,
                height: 300,
                child: FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the VideoPlayerController has finished initialization, use
                      // the data it provides to limit the aspect ratio of the video.
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
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
    );
  }
}

class audioscrenn extends StatefulWidget {
  const audioscrenn({Key? key}) : super(key: key);

  @override
  State<audioscrenn> createState() => _audioscrennState();
}

class _audioscrennState extends State<audioscrenn> {
  FlutterSoundPlayer _myPlayer = FlutterSoundPlayer();
  bool _mPlayerIsInited = false;
  double picked = 2;
  String _exampleAudioFilePathMP3 =
      'https://flutter-sound.canardoux.xyz/extract/05.mp3';
  StreamSubscription? _mPlayerSubscription;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  var pos;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myPlayer.openAudioSession().then((value) {
      setState(() {
        _mPlayerIsInited = true;
      });
    });
    _mPlayerSubscription = _myPlayer.onProgress!.listen((e) {
      setState(() {
        duration = e.duration;
        position = e.position;
      });
    });
  }

  @override
  void dispose() {
    _myPlayer.closeAudioSession();
    // TODO: implement dispose
    super.dispose();
  }

  void play() async {
    print('sound player is open');
    await _myPlayer.startPlayer(
        fromURI: _exampleAudioFilePathMP3,
        codec: Codec.mp3,
        whenFinished: () {
          setState(() {});
        });
    _mPlayerSubscription = _myPlayer.onProgress!.listen((e) {
      setState(() {
        pos = e.position.inMilliseconds;
        print('sound player is open ya musta[ha');
        print(pos);
      });
    });
    setState(() {});
  }

  Future<void> stopPlayer() async {
    if (_myPlayer != null) {
      await _myPlayer.stopPlayer();
    }
  }

  give() {
    if (_myPlayer != null) {
      _mPlayerSubscription = _myPlayer.onProgress!.listen((e) {
        print('sound player is open ya musta[ha');
        setState(() {
          pos = e.position.inMilliseconds;
          print('sound player is open ya musta[ha');
          print(pos);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sound player'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Sound PLayer'),
            ElevatedButton(onPressed: play, child: Text('start player')),
            ElevatedButton(onPressed: stopPlayer, child: Text('stop player')),
            ElevatedButton(onPressed: give, child: Text('give me ')),
            Slider(
                divisions: 20,
                max: 20,
                value: picked,
                onChanged: (double value) {
                  setState(() {
                    picked = value;
                  });
                }),
            Text('${picked.toString()}'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(duration.toString()),
                  Text(position.toString())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
