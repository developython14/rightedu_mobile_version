import 'package:flutter/material.dart';

class hisprofile extends StatefulWidget {
  const hisprofile({Key? key}) : super(key: key);

  @override
  State<hisprofile> createState() => _hisprofileState();
}

class _hisprofileState extends State<hisprofile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.history,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'History',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          bottom: TabBar(tabs: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.cleaning_services,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.podcasts,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Posts',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: TabBarView(children: [
            SafeArea(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  DataTable(sortColumnIndex: 1, columns: [
                    DataColumn(
                      label: Text(
                        'id',
                      ),
                    ),
                    DataColumn(
                      label: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/start_app/samir.jpg",
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'service name',
                          ),
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/start_app/moh.jpg",
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'service provider',
                          ),
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Row(
                        children: [
                          Icon(
                            Icons.price_change,
                            size: 30,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Price',
                          ),
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Row(
                        children: [
                          Icon(
                            Icons.work_history,
                            size: 30,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'State',
                          ),
                        ],
                      ),
                    ),
                  ], rows: [
                    DataRow(selected: true, cells: [
                      DataCell(
                        Text(
                          '1',
                        ),
                      ),
                      DataCell(
                        Text(
                          'traduction of university paper',
                        ),
                      ),
                      DataCell(
                        Text(
                          'mustapha belkassem',
                        ),
                      ),
                      DataCell(
                        Text(
                          '25',
                        ),
                      ),
                      DataCell(
                        Text(
                          'completed',
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '3',
                        ),
                      ),
                      DataCell(
                        Text(
                          'traduction of university paper',
                        ),
                      ),
                      DataCell(
                        Text(
                          'mustapha belkassem',
                        ),
                      ),
                      DataCell(
                        Text(
                          '25',
                        ),
                      ),
                      DataCell(
                        Text(
                          'completed',
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '2',
                        ),
                      ),
                      DataCell(
                        Text(
                          'traduction of university paper',
                        ),
                      ),
                      DataCell(
                        Text(
                          'mustapha belkassem',
                        ),
                      ),
                      DataCell(
                        Text(
                          '25',
                        ),
                      ),
                      DataCell(
                        Text(
                          'completed',
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '4',
                        ),
                      ),
                      DataCell(
                        Text(
                          'traduction of university paper',
                        ),
                      ),
                      DataCell(
                        Text(
                          'mustapha belkassem',
                        ),
                      ),
                      DataCell(
                        Text(
                          '25',
                        ),
                      ),
                      DataCell(
                        Text(
                          'completed',
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '5',
                        ),
                      ),
                      DataCell(
                        Text(
                          'traduction of university paper',
                        ),
                      ),
                      DataCell(
                        Text(
                          'mustapha belkassem',
                        ),
                      ),
                      DataCell(
                        Text(
                          '25',
                        ),
                      ),
                      DataCell(
                        Text(
                          'completed',
                        ),
                      )
                    ])
                  ]),
                ],
              ),
            )),
            Text('france')
          ]),
        ),
      ),
    );
  }
}
