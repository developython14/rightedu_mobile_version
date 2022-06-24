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

class resume extends StatefulWidget {
  @override
  State<resume> createState() => _resumeState();
}

class _resumeState extends State<resume> {
  Color men = Color.fromARGB(255, 222, 0, 126);
  Color women = Color.fromARGB(255, 10, 127, 222);
  Color back = Color.fromARGB(255, 0, 1, 2);
  double widthbar = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  backgroundColor: back,
                  titlesData: FlTitlesData(
                      rightTitles: AxisTitles(drawBehindEverything: true),
                      bottomTitles: AxisTitles(sideTitles: SideTitles(
                          getTitlesWidget: (double value, TitleMeta meta) {
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          space: 5,
                          child: Text('m'),
                        );
                      })),
                      topTitles: AxisTitles(
                          drawBehindEverything: true,
                          axisNameWidget: Text(
                            'Men Vs Women',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                  minY: 0,
                  maxY: 25,
                  barGroups: [
                    BarChartGroupData(barsSpace: 5, x: 1, barRods: [
                      BarChartRodData(width: widthbar, toY: 15, color: men),
                      BarChartRodData(width: widthbar, toY: 22, color: women)
                    ]),
                    BarChartGroupData(barsSpace: 5, x: 2, barRods: [
                      BarChartRodData(width: widthbar, toY: 10, color: men),
                      BarChartRodData(width: widthbar, toY: 18, color: women)
                    ]),
                    BarChartGroupData(barsSpace: 5, x: 1, barRods: [
                      BarChartRodData(width: widthbar, toY: 17, color: men),
                      BarChartRodData(width: widthbar, toY: 26, color: women)
                    ]),
                    BarChartGroupData(barsSpace: 5, x: 2, barRods: [
                      BarChartRodData(width: widthbar, toY: 24, color: men),
                      BarChartRodData(width: widthbar, toY: 13, color: women)
                    ]),
                  ],
                  // read about it in the BarChartData section
                ),
                swapAnimationDuration: Duration(milliseconds: 150), // Optional
                swapAnimationCurve: Curves.linear, // Optional
              ),
            ),
          ),
        ),
      ),
    );
  }
}
