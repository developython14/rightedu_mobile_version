import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

///
typedef Fn = void Function();
String _exampleAudioFilePathMP3 =
    'https://flutter-sound.canardoux.xyz/extract/05.mp3';

/// Example app.
class PlayerOnProgress extends StatefulWidget {
  @override
  _PlayerOnProgressState createState() => _PlayerOnProgressState();
}

class _PlayerOnProgressState extends State<PlayerOnProgress> {
  final FlutterSoundPlayer _mPlayer = FlutterSoundPlayer();
  bool _mPlayerIsInited = false;
  double _mSubscriptionDuration = 0;
  Uint8List? _boumData;
  StreamSubscription? _mPlayerSubscription;
  int pos = 0;

  @override
  void initState() {
    super.initState();
    init().then((value) {
      setState(() {
        _mPlayerIsInited = true;
      });
    });
  }

  @override
  void dispose() {
    stopPlayer(_mPlayer);
    cancelPlayerSubscriptions();

    // Be careful : you must `close` the audio session when you have finished with it.
    _mPlayer.stopPlayer();

    super.dispose();
  }

  void cancelPlayerSubscriptions() {
    if (_mPlayerSubscription != null) {
      _mPlayerSubscription!.cancel();
      _mPlayerSubscription = null;
    }
  }

  Future<void> init() async {
    await _mPlayer.startPlayer(fromURI: _exampleAudioFilePathMP3);
    _mPlayerSubscription = _mPlayer.onProgress!.listen((e) {
      setState(() {
        pos = e.position.inMilliseconds;
      });
    });
  }

  Future<Uint8List> getAssetData(String path) async {
    var asset = await rootBundle.load(path);
    return asset.buffer.asUint8List();
  }

  // -------  Here is the code to playback  -----------------------

  void play(FlutterSoundPlayer? player) async {
    await player!.startPlayer(
        fromURI: _exampleAudioFilePathMP3,
        codec: Codec.aacADTS,
        whenFinished: () {
          setState(() {});
        });
    setState(() {});
  }

  Future<void> stopPlayer(FlutterSoundPlayer player) async {
    await player.stopPlayer();
  }

  Future<void> setSubscriptionDuration(
      double d) async // v is between 0.0 and 2000 (milliseconds)
  {
    _mSubscriptionDuration = d;
    setState(() {});
    await _mPlayer.setSubscriptionDuration(
      Duration(milliseconds: d.floor()),
    );
  }

  // --------------------- UI -------------------

  Fn? getPlaybackFn(FlutterSoundPlayer? player) {
    if (!_mPlayerIsInited) {
      return null;
    }
    return player!.isStopped
        ? () {
            play(player);
          }
        : () {
            stopPlayer(player).then((value) => setState(() {}));
          };
  }

  @override
  Widget build(BuildContext context) {
    Widget makeBody() {
      //return Column(
      //children: [
      return Container(
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.all(3),
        height: 140,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFFAF0E6),
          border: Border.all(
            color: Colors.indigo,
            width: 3,
          ),
        ),
        child: Column(children: [
          Row(children: [
            ElevatedButton(
              onPressed: getPlaybackFn(_mPlayer),
              child: Text(_mPlayer.isPlaying ? 'Stop' : 'Play'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(_mPlayer.isPlaying
                ? 'Playback in progress'
                : 'Player is stopped'),
            SizedBox(
              width: 20,
            ),
            Text('Pos: $pos'),
          ]),
          Text('Subscription Duration:'),
          Slider(
            value: _mSubscriptionDuration,
            min: 0.0,
            max: 2000.0,
            onChanged: setSubscriptionDuration,
            //divisions: 100
          ),
        ]),
        //),
        //],
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Player onProgress'),
      ),
      body: makeBody(),
    );
  }
}
