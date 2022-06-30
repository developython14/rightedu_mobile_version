import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';

class mustaphaudio extends StatefulWidget {
  const mustaphaudio({Key? key}) : super(key: key);

  @override
  State<mustaphaudio> createState() => _mustaphaudioState();
}

final _exampleAudioFilePathMP3 = 'http://www.nch.com.au/acm/8k16bitpcm.wav';

class _mustaphaudioState extends State<mustaphaudio> {
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

  void play() async {
    await _myPlayer.startPlayer(
        fromURI: _exampleAudioFilePathMP3,
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
      appBar: AppBar(
        title: Text('dart:async'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text('free audio player'),
            ElevatedButton(onPressed: play, child: Text('play')),
            ElevatedButton(onPressed: stopPlayer, child: Text('stop'))
          ],
        ),
      ),
    );
  }
}
