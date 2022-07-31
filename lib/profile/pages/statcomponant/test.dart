import 'dart:async';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class hacker extends StatefulWidget {
  const hacker({Key? key}) : super(key: key);

  @override
  State<hacker> createState() => _hackerState();
}

class _hackerState extends State<hacker> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animation;
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    animation = Tween<Offset>(begin: Offset(1, 1), end: Offset(0, 0)).animate(
      _controller,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 1200),
            child: Text(
              'Mustapha Belkassem',
            ),
            builder: (context, double value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
          ),
        ),
        body: AnimatedList(
          initialItemCount: 20,
          key: _listKey,
          itemBuilder: (BuildContext context, index, _animation) {
            return SlideTransition(
              position: animation,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/testme');
                    },
                    leading: Hero(
                      tag: 'himus',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/start_app/fares.jpg'),
                      ),
                    ),
                    title: Text('One-line with free fire widget'),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'himus',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/start_app/fares.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              'belkassem mustapha cest grand gflgfjskglsjgkgflgfjskglsjggflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdgflgfjskglsjgklfdjsgklfdlfdjsgklfd;gksdfl')
        ]),
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

class testload extends StatelessWidget {
  const testload({Key? key}) : super(key: key);
  Future getFuture() {
    return Future(() async {
      await Future.delayed(Duration(seconds: 5));
      return 'Hello, Future Progress Dialog!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('push'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => FutureProgressDialog(getFuture(),
                  message: Text('Loading...')),
            );
          },
        ),
      ),
    );
  }
}
