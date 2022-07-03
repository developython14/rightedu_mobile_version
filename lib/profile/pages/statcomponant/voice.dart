import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';

class voice extends StatefulWidget {
  const voice({Key? key}) : super(key: key);

  @override
  State<voice> createState() => _voiceState();
}

class _voiceState extends State<voice> {
  FlutterSoundPlayer _myPlayer = FlutterSoundPlayer();
  bool _mPlayerIsInited = false;
  double _mSubscriptionDuration = 0;
  StreamSubscription? _mPlayerSubscription;
  int pos = 1998;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myPlayer.openAudioSession().then((value) {
      setState(() {
        _mPlayerIsInited = true;
      });
    });
    _myPlayer.setSubscriptionDuration(Duration(milliseconds: 50));
    _mPlayerSubscription = _myPlayer.onProgress!.listen((e) {
      setState(() {
        pos = e.position.inMilliseconds;
      });
    });
  }

  @override
  void dispose() {
    _myPlayer.closeAudioSession();
    // TODO: implement dispose
    super.dispose();
  }

  final _exampleAudioFilePathMP3 =
      'https://programminghead.com/audio/audio.mp3';
  void play() async {
    await _myPlayer.startPlayer(
        fromURI: _exampleAudioFilePathMP3,
        codec: Codec.mp3,
        whenFinished: () {
          setState(() {});
        });
    setState(() {});
  }

  Future<void> pausePlayer() async {
    if (_myPlayer != null) {
      await _myPlayer.pausePlayer();
    }
  }

  Future<void> resumePlayer() async {
    if (_myPlayer != null) {
      await _myPlayer.resumePlayer();
    }
  }

  Future<void> stopPlayer() async {
    if (_myPlayer != null) {
      await _myPlayer.stopPlayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          ElevatedButton(onPressed: play, child: Text('play ')),
          ElevatedButton(onPressed: stopPlayer, child: Text('stop')),
          ElevatedButton(onPressed: pausePlayer, child: Text('pause')),
          ElevatedButton(onPressed: resumePlayer, child: Text('resume')),
          Center(child: Text('$pos')),
        ],
      ),
    );
  }
}
