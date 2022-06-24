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
  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    return SideTitleWidget(
        axisSide: meta.axisSide, space: 16, child: Text('S', style: style));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/start_app/usthb.png",
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "Algeria Bank",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        backgroundColor: back,
                        titlesData: FlTitlesData(
                          rightTitles: AxisTitles(drawBehindEverything: true),
                          topTitles: AxisTitles(drawBehindEverything: true),
                        ),
                        minY: 0,
                        maxY: 25,
                        barGroups: [
                          BarChartGroupData(barsSpace: 5, x: 1, barRods: [
                            BarChartRodData(
                                width: widthbar, toY: 15, color: men),
                            BarChartRodData(
                                width: widthbar, toY: 22, color: women)
                          ]),
                          BarChartGroupData(barsSpace: 5, x: 2, barRods: [
                            BarChartRodData(
                                width: widthbar, toY: 10, color: men),
                            BarChartRodData(
                                width: widthbar, toY: 18, color: women)
                          ]),
                          BarChartGroupData(barsSpace: 5, x: 3, barRods: [
                            BarChartRodData(
                                width: widthbar, toY: 17, color: men),
                            BarChartRodData(
                                width: widthbar, toY: 26, color: women)
                          ]),
                          BarChartGroupData(barsSpace: 5, x: 4, barRods: [
                            BarChartRodData(
                                width: widthbar, toY: 24, color: men),
                            BarChartRodData(
                                width: widthbar, toY: 13, color: women)
                          ]),
                        ],
                        // read about it in the BarChartData section
                      ),
                      swapAnimationDuration:
                          Duration(milliseconds: 150), // Optional
                      swapAnimationCurve: Curves.linear, // Optional
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
