import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/compenant/post_widget.dart';

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
          title: Center(
            child: Row(
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
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '1',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.SUCCESS,
                          onPressed: () {},
                          text: "Completed",
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
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.DANGER,
                          onPressed: () {},
                          text: "rejceted",
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
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.WARNING,
                          onPressed: () {},
                          text: "Pending",
                        ),
                      )
                    ]),
                    DataRow(selected: true, cells: [
                      DataCell(
                        Text(
                          '4',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.SUCCESS,
                          onPressed: () {},
                          text: "Completed",
                        ),
                      )
                    ]),
                    DataRow(selected: true, cells: [
                      DataCell(
                        Text(
                          '5',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.SUCCESS,
                          onPressed: () {},
                          text: "Completed",
                        ),
                      )
                    ]),
                    DataRow(selected: true, cells: [
                      DataCell(
                        Text(
                          '6',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.WARNING,
                          onPressed: () {},
                          text: "pending",
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '7',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.DANGER,
                          onPressed: () {},
                          text: "Rejected",
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '8',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.SUCCESS,
                          onPressed: () {},
                          text: "Completed",
                        ),
                      )
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '9',
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/fares.jpg",
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'traduction of university paper',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/start_app/mustapha.jpg",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              'mustapha belkassem',
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Text(
                          '25 Usd',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        GFButtonBadge(
                          color: GFColors.WARNING,
                          onPressed: () {},
                          text: "pendind",
                        ),
                      )
                    ]),
                  ]),
                ],
              ),
            )),
            SingleChildScrollView(
              child: Column(
                children: [
                  post_widget(
                    'Mustapha belkassem',
                    "assets/start_app/mustapha.jpg",
                    "assets/start_app/fares.jpg",
                  ),
                  post_widget(
                    'Mustapha belkassem',
                    "assets/start_app/mustapha.jpg",
                    "assets/start_app/samir.jpg",
                  ),
                  post_widget(
                    'Mustapha belkassem',
                    "assets/start_app/mustapha.jpg",
                    "assets/start_app/usthb.png",
                  ),
                  post_widget(
                    'Mustapha Belkassem',
                    "assets/start_app/mustapha.jpg",
                    "assets/start_app/cover.jpg",
                  ),
                  post_widget(
                    'Mustapha Belkassem',
                    "assets/start_app/mustapha.jpg",
                    "assets/start_app/elon.jpg",
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
