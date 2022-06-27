import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class helpprofile extends StatefulWidget {
  const helpprofile({Key? key}) : super(key: key);

  @override
  State<helpprofile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<helpprofile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.cleaning_services,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Frequently Questions',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.podcasts,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Post a Question',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ]),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.help_center,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Help',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
                Container(
                  child: GFAccordion(
                      title: 'What is right?',
                      content:
                          'GetFlutter is an open source library that comes Flutter is an open source library that comes  Flutter is an open source library that comes with pre-build 1000+ UI components.'),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Form(
                    key: _formKey,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Question Field',
                              prefixIcon: Icon(Icons.domain),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'your question here',
                              prefixIcon: Icon(Icons.question_answer),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GFButton(
                            onPressed: () {},
                            text: "post this question",
                            fullWidthButton: true,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
