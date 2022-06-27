import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class payprofile extends StatefulWidget {
  const payprofile({Key? key}) : super(key: key);

  @override
  State<payprofile> createState() => _payprofileState();
}

class _payprofileState extends State<payprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.monetization_on,
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Payments',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SafeArea(
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
    );
  }
}
