import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:camera/camera.dart';

class cameracapteur extends StatefulWidget {
  cameracapteur({
    required this.camera,
  });

  late CameraDescription camera;

  @override
  State<cameracapteur> createState() => _cameracapteurState();
}

class _cameracapteurState extends State<cameracapteur> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  @override
  void initState() async {
    // TODO: implement initState
    super.initState();
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('belkassem')),
      floatingActionButton: FloatingActionButton(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and then get the location
            // where the image file is saved.
            final image = await _controller.takePicture();
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
