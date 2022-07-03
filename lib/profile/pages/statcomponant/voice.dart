import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';

class recorder extends StatefulWidget {
  const recorder({Key? key}) : super(key: key);

  @override
  State<recorder> createState() => _recorderState();
}

class _recorderState extends State<recorder> {
  FlutterSoundRecorder _myRecorder = FlutterSoundRecorder();
  bool _mRecorderIsInited = true;
  String _mPath = 'free';
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

  Future<void> record() async {
    await _myRecorder.startRecorder(
      toFile: _mPath,
      codec: Codec.aacADTS,
    );
  }

  Future<void> stopRecorder() async {
    await _myRecorder.stopRecorder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mss'),
      ),
      body: Text('mustaha'),
    );
  }
}
