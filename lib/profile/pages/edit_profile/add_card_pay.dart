import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:awesome_card/awesome_card.dart';

class addcard extends StatefulWidget {
  const addcard({Key? key}) : super(key: key);

  @override
  State<addcard> createState() => _addcardState();
}

class _addcardState extends State<addcard> {
  final _formKey = GlobalKey<FormState>();
  String? card_type_selected = 'americanExpress';
  String? holdername = '';
  String? bankname = '';
  String? cardnumber = '';
  String? expiredate = '';
  var card_type = {
    'americanExpress': CardType.americanExpress,
    'dinersClub': CardType.dinersClub,
    'discover': CardType.discover,
    'elo': CardType.elo,
    'jcb': CardType.jcb,
    'maestro': CardType.maestro,
    'elo': CardType.maestro,
    'masterCard': CardType.masterCard,
    'rupay': CardType.rupay,
    'visa': CardType.visa,
    'other': CardType.other,
  };
  final list_bankes = [
    'americanExpress',
    'dinersClub',
    'discover',
    'elo',
    'jcb',
    'maestro',
    'elo',
    'masterCard',
    'rupay',
    'visa',
    'other',
  ];
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "add New card",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Color.fromARGB(255, 233, 233, 233),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    children: [
                      CreditCard(
                          cardNumber: cardnumber,
                          cardExpiry: expiredate,
                          cardHolderName: holdername,
                          cvv: "356",
                          bankName: bankname.toString(),
                          cardType: card_type[
                              card_type_selected], // Optional if you want to override Card Type
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
                                      hint: Text('$card_type_selected'),
                                      items: list_bankes.map(buildmen).toList(),
                                      onChanged: (String? text) {
                                        setState(() {
                                          card_type_selected = text;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            GFButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/addcard');
                              },
                              text: "add this card",
                              fullWidthButton: true,
                              size: GFSize.LARGE,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildmen(String item) =>
    DropdownMenuItem(value: item, child: Text('$item'));
