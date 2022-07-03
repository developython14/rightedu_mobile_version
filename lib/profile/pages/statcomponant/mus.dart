import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class dataaudio extends StatefulWidget {
  const dataaudio({Key? key}) : super(key: key);

  @override
  State<dataaudio> createState() => _dataaudioState();
}

class _dataaudioState extends State<dataaudio> {
  final player = AudioPlayer();
  Duration duree = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.onDurationChanged.listen((Duration d) {
      print('Max duration: $d');
      setState(() => duree = d);
    });

    player.onPositionChanged.listen((Duration p) {
      print('Current position: $p');
      setState(() => position = p);
    });
  }

  String _exampleAudioFilePathMP3 =
      'https://programminghead.com/audio/audio.mp3';
  void play() async {
    await player.play(
        UrlSource(_exampleAudioFilePathMP3)); // will immediately start playing

    setState(() {});
  }

  Future<void> pausePlayer() async {
    if (player != null) {
      await player.pause(); // will resume where left off

    }
  }

  Future<void> resumePlayer() async {
    if (player != null) {
      await player.resume(); // will resume where left off

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('free algerie'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('ici c est  belle vue,,/ '),
          ElevatedButton(onPressed: play, child: Text('play ')),
          ElevatedButton(onPressed: pausePlayer, child: Text('stop')),
          ElevatedButton(onPressed: resumePlayer, child: Text('resume')),
        ],
      ),
    );
  }
}
