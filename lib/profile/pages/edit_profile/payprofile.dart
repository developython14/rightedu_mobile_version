import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:awesome_card/awesome_card.dart';

class payprofile extends StatefulWidget {
  const payprofile({Key? key}) : super(key: key);

  @override
  State<payprofile> createState() => _payprofileState();
}

class _payprofileState extends State<payprofile> {
  final _formKey = GlobalKey<FormState>();
  String? cardtype = '';
  String? holdername = '';
  String? bankname = '';
  String? cardnumber = '';
  String? expiredate = '';
  final list_spicialities = ["PAYSERA", "WIZE", "PAYPAL", "MASTER CARD"];
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  _dismissDialog() {
    Navigator.pop(context);
  }

  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add new Cards'),
            content: Container(
              color: Color.fromARGB(255, 233, 233, 233),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  CreditCard(
                      cardNumber: cardnumber,
                      cardExpiry: expiredate,
                      cardHolderName: holdername,
                      cvv: "356",
                      bankName: bankname.toString(),
                      cardType: CardType
                          .discover, // Optional if you want to override Card Type
                      showBackSide: false,
                      frontBackground: CardBackgrounds.black,
                      backBackground: CardBackgrounds.white,
                      showShadow: true,
                      textExpDate: 'Exp. Date',
                      textName: 'Name',
                      textExpiry: 'MM/YY'),
                  SizedBox(
                    height: 15,
                  ),
                  Form(
                    child: Column(
                      key: _formKey,
                      children: [
                        TextFormField(
                          onChanged: (text) {
                            setState(() {
                              holdername = capitalize(text);
                            });
                          },
                          decoration: InputDecoration(
                              label: Text('card holder name'),
                              hintText: 'card holder is'),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          onChanged: (text) {
                            setState(() {
                              bankname = text;
                            });
                          },
                          decoration: InputDecoration(
                              label: Text('Bank name'),
                              hintText: 'Bank name is'),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          onChanged: (text) {
                            setState(() {
                              expiredate = text;
                            });
                          },
                          decoration: InputDecoration(
                              label: Text('expire date of card'),
                              hintText: 'expire date of card'),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          onChanged: (text) {
                            setState(() {
                              cardnumber = text;
                            });
                          },
                          decoration: InputDecoration(
                              label: Text('card number'),
                              hintText: 'card number is'),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Select Card Type:"),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: DropdownButton(
                                  hint: Text('$cardtype'),
                                  items:
                                      list_spicialities.map(buildmen).toList(),
                                  onChanged: (String? text) {
                                    setState(() {
                                      cardtype = text ?? "";
                                    });
                                  }),
                            ),
                          ],
                        ),
                        GFButton(
                          onPressed: () {},
                          text: "add this card",
                          fullWidthButton: true,
                          size: GFSize.LARGE,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    _dismissDialog();
                  },
                  child: Text('Close')),
              TextButton(
                onPressed: () {
                  print('HelloWorld!');
                  _dismissDialog();
                },
                child: Text('HelloWorld!'),
              )
            ],
          );
        });
  }

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
            SizedBox(
              height: 40,
            ),
            GFButton(
              onPressed: () {
                _showMaterialDialog();
              },
              text: "Add New Card",
              fullWidthButton: true,
            ),
            SizedBox(
              height: 20,
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
                      Text("120 €",
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

DropdownMenuItem<String> buildmen(String item) =>
    DropdownMenuItem(value: item, child: Text('$item'));
