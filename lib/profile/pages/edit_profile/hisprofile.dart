import 'package:flutter/material.dart';

class hisprofile extends StatefulWidget {
  const hisprofile({Key? key}) : super(key: key);

  @override
  State<hisprofile> createState() => _hisprofileState();
}

class _hisprofileState extends State<hisprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('historique profile'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'services history',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Table(
              children: [
                TableRow(children: [
                  Text(
                    'id',
                  ),
                  Text(
                    'service name',
                  ),
                  Text(
                    'service state',
                  ),
                  Text(
                    'professor',
                  ),
                  Text(
                    'prices',
                  )
                ]),
                TableRow(children: [
                  Text(
                    'id',
                  ),
                  Text(
                    'service name',
                  ),
                  Text(
                    'service state',
                  ),
                  Text(
                    'professor',
                  ),
                  Text(
                    'prices',
                  )
                ]),
                TableRow(children: [
                  Text(
                    'id',
                  ),
                  Text(
                    'service name',
                  ),
                  Text(
                    'service state',
                  ),
                  Text(
                    'professor',
                  ),
                  Text(
                    'prices',
                  )
                ])
              ],
            )
          ],
        ),
      )),
    );
  }
}
