import 'package:flutter/material.dart';
import 'package:status_change/status_change.dart';

class projectstatus extends StatefulWidget {
  const projectstatus({Key? key}) : super(key: key);

  @override
  State<projectstatus> createState() => _projectstatusState();
}

class _projectstatusState extends State<projectstatus> {
  List _processes = [];
  int _processIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.work_sharp,
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Project status',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 300,
            child: StatusChange.tileBuilder(
              theme: StatusChangeThemeData(
                direction: Axis.vertical,
                connectorTheme: ConnectorThemeData(space: 1.0, thickness: 1.0),
              ),
              builder: StatusChangeTileBuilder.connected(
                itemWidth: (_) =>
                    MediaQuery.of(context).size.width / _processes.length,
                contentWidgetBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'add content here',
                      style: TextStyle(
                        color: Colors
                            .blue, // change color with dynamic color --> can find it with example section
                      ),
                    ),
                  );
                },
                nameWidgetBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'your text ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  );
                },
                indicatorWidgetBuilder: (_, index) {
                  if (index <= _processIndex) {
                    return DotIndicator(
                      size: 35.0,
                      border: Border.all(color: Colors.green, width: 1),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return OutlinedDotIndicator(
                      size: 30,
                      borderWidth: 1.0,
                      color: Colors.green,
                    );
                  }
                },
                lineWidgetBuilder: (index) {
                  if (index > 0) {
                    if (index == _processIndex) {
                      final prevColor = Colors.green;
                      final color = Colors.green;
                      var gradientColors;
                      gradientColors = [
                        prevColor,
                        Color.lerp(prevColor, color, 0.5)
                      ];
                      return DecoratedLineConnector(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradientColors,
                          ),
                        ),
                      );
                    } else {
                      return SolidLineConnector(
                        color: Colors.green,
                      );
                    }
                  } else {
                    return null;
                  }
                },
                itemCount: _processes.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
