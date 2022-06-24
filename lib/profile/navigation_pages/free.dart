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
  Color women = Color.fromARGB(255, 6, 118, 209);
  Color back = Color.fromARGB(255, 0, 1, 2);
  double widthbar = 22;
  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color.fromARGB(255, 7, 2, 2),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Algeria', style: style);
        break;
      case 1:
        text = const Text('Egypt', style: style);
        break;
      case 2:
        text = const Text('Morocco', style: style);
        break;
      case 3:
        text = const Text('Finland', style: style);
        break;
      case 4:
        text = const Text('Italie', style: style);
        break;
      case 5:
        text = const Text('S', style: style);
        break;
      case 6:
        text = const Text('S', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      angle: 0,
      child: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  "assets/start_app/usthb.png",
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Text(
                                "Algeria Bank",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 7, 79, 168)),
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
                                    rightTitles:
                                        AxisTitles(drawBehindEverything: true),
                                    topTitles:
                                        AxisTitles(drawBehindEverything: true),
                                    leftTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                            interval: 5, showTitles: false)),
                                    bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                      getTitlesWidget: getTitles,
                                      showTitles: true,
                                      reservedSize: 22,
                                    ))),
                                minY: 0,
                                maxY: 28,
                                barGroups: [
                                  BarChartGroupData(
                                      barsSpace: 5,
                                      x: 1,
                                      barRods: [
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 15,
                                            color: men),
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 22,
                                            color: women)
                                      ]),
                                  BarChartGroupData(
                                      barsSpace: 5,
                                      x: 2,
                                      barRods: [
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 10,
                                            color: men),
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 18,
                                            color: women)
                                      ]),
                                  BarChartGroupData(
                                      barsSpace: 5,
                                      x: 3,
                                      barRods: [
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 17,
                                            color: men),
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 26,
                                            color: women)
                                      ]),
                                  BarChartGroupData(
                                      barsSpace: 5,
                                      x: 4,
                                      barRods: [
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 24,
                                            color: men),
                                        BarChartRodData(
                                            width: widthbar,
                                            toY: 13,
                                            color: women)
                                      ]),
                                ],
                                // read about it in the BarChartData section
                              ),
                              swapAnimationDuration:
                                  Duration(milliseconds: 150), // Optional
                              swapAnimationCurve: Curves.linear, // Optional
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    color: Color.fromARGB(255, 188, 150, 150),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Card(
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                "assets/start_app/data.jpg",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Analysis data",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 7, 79, 168)),
                            ),
                          ],
                        ),
                        Expanded(
                            child: LineChart(
                          LineChartData(
                            titlesData: FlTitlesData(
                                rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false))),
                            lineBarsData: [
                              LineChartBarData(
                                isCurved: true,
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 62, 9, 108),
                                    Colors.redAccent
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                spots: const [
                                  FlSpot(0, 3),
                                  FlSpot(2.6, 2),
                                  FlSpot(4.9, 5),
                                  FlSpot(6.8, 3.1),
                                  FlSpot(8, 4),
                                  FlSpot(9.5, 3),
                                  FlSpot(11, 4),
                                ],
                              ),
                              LineChartBarData(
                                isCurved: true,
                                color: Colors.blue,
                                spots: const [
                                  FlSpot(3, 3),
                                  FlSpot(2.56, 1.2),
                                  FlSpot(4.9, 5),
                                  FlSpot(6.8, 7.1),
                                  FlSpot(8, 4),
                                  FlSpot(4.5, 3),
                                  FlSpot(1.1, 4),
                                ],
                              ),
                            ],
                            // read about it in the LineChartData section
                          ),
                          swapAnimationDuration:
                              Duration(milliseconds: 150), // Optional
                          swapAnimationCurve: Curves.linear, // Optional
                        ))
                      ]),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
