import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:fl_chart/fl_chart.dart';

class resume extends StatefulWidget {
  @override
  State<resume> createState() => _resumeState();
}

class _resumeState extends State<resume> {
  Color men = Color.fromARGB(255, 222, 0, 126);
  Color women = Color.fromARGB(255, 6, 118, 209);
  Color back = Color.fromARGB(255, 0, 1, 2);
  double widthbar = 22;
  final _formKey = GlobalKey<FormState>();
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
                                leftTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: true)),
                                topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false))),
                            lineBarsData: [
                              LineChartBarData(
                                barWidth: 10,
                                isCurved: true,
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 75, 0, 140),
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
                                barWidth: 5,
                                isCurved: true,
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 0, 84, 140),
                                    Color.fromARGB(255, 255, 82, 140)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                spots: const [
                                  FlSpot(0, 3),
                                  FlSpot(0.6, 2),
                                  FlSpot(2.9, 5),
                                  FlSpot(6, 4.1),
                                  FlSpot(4, 4),
                                  FlSpot(5.5, 3),
                                  FlSpot(1, 4),
                                ],
                              ),
                              LineChartBarData(
                                isCurved: true,
                                color: Colors.blue,
                                barWidth: 10,
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 99, 255, 156),
                                    Colors.redAccent
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
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
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Color.fromARGB(67, 161, 40, 149),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Card(
                      child: Column(children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/start_app/0.jpg",
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
                        child: PieChart(
                      PieChartData(
                        centerSpaceRadius: 100,
                        sections: [
                          PieChartSectionData(
                              value: 10,
                              radius: 50,
                              title: "alger",
                              badgeWidget: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  "assets/start_app/3.jpg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              titleStyle: TextStyle(color: Colors.white),
                              color: Color.fromARGB(255, 183, 92, 92)),
                          PieChartSectionData(
                              value: 24,
                              radius: 45,
                              badgeWidget: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  "assets/start_app/2.jpg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              title: "casabclanca",
                              titleStyle: TextStyle(color: Colors.white),
                              color: Color.fromARGB(255, 180, 127, 186)),
                          PieChartSectionData(
                              value: 13,
                              radius: 60,
                              title: "roma",
                              badgeWidget: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  "assets/start_app/fares.jpg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              titleStyle: TextStyle(color: Colors.white),
                              color: Color.fromARGB(255, 52, 194, 52)),
                          PieChartSectionData(
                              radius: 45,
                              value: 8,
                              title: "madrid",
                              badgeWidget: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  "assets/start_app/moh.jpg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              titleStyle: TextStyle(color: Colors.white),
                              color: Color.fromARGB(255, 75, 67, 224))
                        ],
                        // read about it in the PieChartData section
                      ),
                      swapAnimationDuration:
                          Duration(milliseconds: 150), // Optional
                      swapAnimationCurve: Curves.linear, // Optional
                    ))
                  ])),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Color.fromARGB(255, 233, 233, 233),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    children: [
                      CreditCard(
                          cardNumber: "2456 7879 4864 7854",
                          cardExpiry: "10/25",
                          cardHolderName: "Belkassem Mustapha",
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
                      SizedBox(
                        height: 15,
                      ),
                      Form(
                        child: Column(
                          key: _formKey,
                          children: [
                            TextFormField(
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
