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
              'Services History',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(),
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
                    Container(
                      color: Color.fromARGB(255, 243, 33, 121),
                      height: 40,
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
                    Container(
                      color: Colors.blue,
                      height: 40,
                    ),
                    Icon(Icons.abc_sharp),
                    Text(
                      'prices',
                    )
                  ])
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
