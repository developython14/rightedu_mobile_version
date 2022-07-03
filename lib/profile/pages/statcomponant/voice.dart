import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class recorder extends StatefulWidget {
  const recorder({Key? key}) : super(key: key);

  @override
  State<recorder> createState() => _recorderState();
}

class _recorderState extends State<recorder> {
  FlutterSoundRecorder _myRecorder = FlutterSoundRecorder();
  bool _mRecorderIsInited = true;
  String _mPath = '';
  Duration maxDuration = Duration.zero;
  @override
  void initState() {
    // TODO: implement initState
    _myRecorder.openAudioSession().then((value) {
      setState(() {
        _mRecorderIsInited = true;
      });
    });
    _myRecorder.setSubscriptionDuration(Duration(milliseconds: 200));
    _myRecorder.onProgress!.listen((event) {
      Duration maxDuration = event.duration;
    });
  }

  void initrecorder() async {
    final status = await Permission.microphone.request();
    if (status.isDenied) {
      throw 'permission denided';
    }
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
    final file = await _myRecorder.stopRecorder();
    File sound = File(file!);
    print(sound);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('record mustapha')),
      body: Center(
        child: Column(
          children: [
            Text('sound reorder'),
            ElevatedButton(onPressed: record, child: Text('record')),
            ElevatedButton(onPressed: stopRecorder, child: Text('stop record')),
            Text('$maxDuration')
          ],
        ),
      ),
    );
  }
}
