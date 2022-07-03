import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:right/profile/pages/statcomponant/chatcomponant/messagechat.dart';

class dataaudio extends StatefulWidget {
  const dataaudio({Key? key}) : super(key: key);

  @override
  State<dataaudio> createState() => _dataaudioState();
}

class _dataaudioState extends State<dataaudio> {
  final player = AudioPlayer();
  Duration duree = Duration.zero;
  Duration position = Duration.zero;
  bool playsound = false;
  Color kPrimaryColor = Colors.blue;

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

    setState(() {
      playsound = true;
    });
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

  changeinslider(double value) async {
    await player.seek(Duration(milliseconds: value.toInt()));
    setState(() {
      position = Duration(milliseconds: value.toInt());
    });
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
          Text('$duree'),
          Text('$position'),
          Slider(
              value: position.inMilliseconds.toDouble(),
              max: duree.inMilliseconds.toDouble(),
              divisions: 50,
              onChanged: changeinslider),
          AudioMessage(),
          Container(
            width: 300,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (() {
                      playsound == false ? play() : pausePlayer();
                    }),
                    icon: Icon(
                      playsound == true ? Icons.pause : Icons.play_arrow,
                    ),
                  ),
                  Expanded(
                    child: Slider(
                        activeColor: kPrimaryColor,
                        value: position.inMilliseconds.toDouble(),
                        max: duree.inMilliseconds.toDouble(),
                        divisions: 50,
                        onChanged: changeinslider),
                  ),
                  Text(
                    "0.55",
                    style: TextStyle(
                        fontSize: 12, color: 2 > 3 ? Colors.white : null),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
