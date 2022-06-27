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
                      'card name holder',
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
                      'bank name',
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
                      'Card Number',
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8230 5996 787',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.SUCCESS,
                    onPressed: () {},
                    text: "Active",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8210 5996 787',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.DANGER,
                    onPressed: () {},
                    text: "Blocked",
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
                        'Belkassem Mustapha',
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
                        'Algerie Bank',
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Text(
                    '1234 36728 2892 909',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.WARNING,
                    onPressed: () {},
                    text: "no credit",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8330 5996 787',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.SUCCESS,
                    onPressed: () {},
                    text: "Active",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8970 5436 768',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.SUCCESS,
                    onPressed: () {},
                    text: "Active",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8970 5436 768',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.WARNING,
                    onPressed: () {},
                    text: "no credit",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8970 5436 768',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.DANGER,
                    onPressed: () {},
                    text: "Blocked",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8970 5436 787',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(
                  GFButtonBadge(
                    color: GFColors.SUCCESS,
                    onPressed: () {},
                    text: "Active",
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
                      Text('Belkassem Mustapha'),
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
                    '1237 8970 5996 787',
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
            GFButton(
              onPressed: () {},
              text: "Add New Card",
              fullWidthButton: true,
            ),
            Row(
              children: [
                Card(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.monetization_on,
                              size: 40, color: Colors.white),
                          Text(
                            "Total Money",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Text("500 €",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.monetization_on,
                              size: 40, color: Colors.white),
                          Text(
                            "Used Money",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Text("500 €",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text(
                            "Rested Money",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Text("380 €",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
