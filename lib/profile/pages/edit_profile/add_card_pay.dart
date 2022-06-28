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
  String? cardtype = '';
  String? holdername = '';
  String? bankname = '';
  String? cardnumber = '';
  String? expiredate = '';
  final list_spicialities = ["PAYSERA", "WIZE", "PAYPAL", "MASTER CARD"];
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
        child: Column(
          children: [
            Container(
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
    );
  }
}

DropdownMenuItem<String> buildmen(String item) =>
    DropdownMenuItem(value: item, child: Text('$item'));
