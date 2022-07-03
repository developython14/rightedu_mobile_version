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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myPlayer.openAudioSession().then((value) {
      setState(() {
        _mPlayerIsInited = true;
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
          ElevatedButton(onPressed: play, child: Text('yped_data')),
          ElevatedButton(onPressed: stopPlayer, child: Text('yped_data')),
          Center(child: Text('yped_data')),
        ],
      ),
    );
  }
}
