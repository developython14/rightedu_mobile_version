import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:fl_chart/fl_chart.dart';

class free extends StatefulWidget {
  const free({Key? key}) : super(key: key);

  @override
  State<free> createState() => _freeState();
}

class _freeState extends State<free> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ALGERIA')),
      body: Column(
        children: [
          CreditCard(
              cardNumber: "2456 7879 4864 7854",
              cardExpiry: "10/25",
              cardHolderName: "Card Holder",
              cvv: "356",
              bankName: "Algeria Bank",
              cardType: CardType
                  .discover, // Optional if you want to override Card Type
              showBackSide: false,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
              textExpDate: 'Exp. Date',
              textName: 'Name',
              textExpiry: 'MM/YY'),
        ],
      ),
    );
  }
}

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('test statistique chart mustapha')),
        body: Column(
          children: [
            LineChart(
              LineChartData(
                  // read about it in the LineChartData section
                  ),
              swapAnimationDuration: Duration(milliseconds: 150), // Optional
              swapAnimationCurve: Curves.linear, // Optional
            )
          ],
        ));
  }
}
