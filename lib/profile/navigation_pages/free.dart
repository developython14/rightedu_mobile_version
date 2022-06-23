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
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: PieChart(
            PieChartData(
                centerSpaceRadius: 100,
                sectionsSpace: 2,
                borderData: FlBorderData(),
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent, PieTouchResponse) {},
                ),
                centerSpaceColor: Color.fromARGB(255, 234, 252, 241),
                sections: [
                  PieChartSectionData(
                      value: 33,
                      color: Colors.cyan,
                      showTitle: true,
                      title: 'hackalgeria',
                      titleStyle: TextStyle(color: Colors.white)),
                  PieChartSectionData(
                      value: 100,
                      color: Color.fromARGB(255, 151, 17, 17),
                      showTitle: true,
                      title: 'free',
                      titleStyle: TextStyle(color: Colors.white)),
                  PieChartSectionData(
                      value: 25,
                      showTitle: true,
                      title: 'algeria',
                      color: Color.fromARGB(255, 212, 117, 0),
                      badgeWidget: Text('free'),
                      titleStyle: TextStyle(color: Colors.white)),
                  PieChartSectionData(
                      value: 25,
                      showTitle: true,
                      title: 'algeria',
                      color: Colors.yellow,
                      titleStyle: TextStyle(color: Colors.white)),
                  PieChartSectionData(
                      value: 67,
                      showTitle: true,
                      title: 'egypt',
                      color: Color.fromARGB(255, 249, 54, 0),
                      titleStyle: TextStyle(color: Colors.white)),
                  PieChartSectionData(
                      value: 67,
                      showTitle: true,
                      title: 'egypt',
                      color: Color.fromARGB(255, 0, 113, 0),
                      titleStyle: TextStyle(color: Colors.white)),
                  PieChartSectionData(
                      value: 67,
                      showTitle: true,
                      title: 'ain taya',
                      color: Color.fromARGB(255, 0, 113, 0),
                      titleStyle: TextStyle(color: Colors.white)),
                ]
                // read about it in the PieChartData section
                ),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear, // Optional
          ),
        ),
      ),
    );
  }
}

class resume extends StatefulWidget {
  const resume({Key? key}) : super(key: key);

  @override
  State<resume> createState() => _resumeState();
}

class _resumeState extends State<resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('free'),
      ),
      body: Center(
          child: Container(
              width: 400,
              height: 500,
              child: BarChart(
                BarChartData(
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      drawVerticalLine: false,
                    ),
                    maxY: 30,
                    titlesData: FlTitlesData(
                        topTitles: AxisTitles(
                            axisNameWidget: Text(
                      'ain taya',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ))),
                    barGroups: [
                      BarChartGroupData(
                        barRods: [
                          BarChartRodData(
                            toY: 24,
                            width: 23,
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 231, 227, 227),
                                  Color.fromARGB(255, 97, 198, 136)
                                ]),
                          ),
                        ],
                        x: 1998,
                      ),
                      BarChartGroupData(
                        barRods: [
                          BarChartRodData(
                            toY: 15,
                            width: 23,
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 231, 227, 227),
                                  Color.fromARGB(255, 141, 36, 125)
                                ]),
                          )
                        ],
                        x: 2,
                      ),
                      BarChartGroupData(
                        barRods: [
                          BarChartRodData(
                            toY: 10,
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 231, 227, 227),
                                  Color.fromARGB(255, 141, 36, 36)
                                ]),
                            width: 23,
                          )
                        ],
                        x: 3,
                      )
                    ]
                    // read about it in the BarChartData section
                    ),
                swapAnimationDuration: Duration(milliseconds: 150), // Optional
                swapAnimationCurve: Curves.linear, // Optional
              ))),
    );
  }
}
