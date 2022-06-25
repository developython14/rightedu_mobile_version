import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:fl_chart/fl_chart.dart';

class right extends StatefulWidget {
  const right({Key? key}) : super(key: key);

  @override
  State<right> createState() => _rightState();
}

class _rightState extends State<right> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algeria is gueriie'),
      ),
      body: Center(
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ]),
                TableRow(children: [
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                  Text('Algeria is gueriie'),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
