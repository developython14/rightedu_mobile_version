import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class mustaphaudio extends StatefulWidget {
  const mustaphaudio({Key? key}) : super(key: key);

  @override
  State<mustaphaudio> createState() => _mustaphaudioState();
}

final _exampleAudioFilePathMP3 =
    'https://flutter-sound.canardoux.xyz/extract/05.mp3';

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
      appBar: AppBar(
        title: Text('mustapha belkassem'),
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

class mustapharecorder extends StatefulWidget {
  @override
  State<mustapharecorder> createState() => _mustapharecorderState();
}

class _mustapharecorderState extends State<mustapharecorder> {
  FlutterSoundRecorder _myRecorder = FlutterSoundRecorder();
  bool _mRecorderIsInited = false;
  Future<void> record() async {
    // Request Microphone permission if needed
    PermissionStatus status = await Permission.microphone.request();
    if (status != PermissionStatus.granted)
      throw RecordingPermissionException("Microphone permission not granted");
    await _myRecorder.startRecorder(
      toFile: 'yassietabou',
      codec: Codec.aacADTS,
    );
  }

  Future<void> stopRecorder() async {
    await _myRecorder.stopRecorder();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myRecorder.openAudioSession().then((value) {
      setState(() {
        _mRecorderIsInited = true;
      });
    });
  }

  @override
  void dispose() {
    _myRecorder.closeAudioSession();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('play'),
      ),
      body: Center(
          child: Column(
        children: [
          Text('start record '),
          ElevatedButton(onPressed: record, child: Text('start record')),
          ElevatedButton(onPressed: stopRecorder, child: Text('Stop record'))
        ],
      )),
    );
  }
}
