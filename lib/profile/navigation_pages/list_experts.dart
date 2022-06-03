import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/main.dart';
import 'package:right/profile/pages/compenant/profilecomponant.dart';

class list_experts extends StatefulWidget {
  @override
  State<list_experts> createState() => _list_expertsState();
}

class _list_expertsState extends State<list_experts> {
  var filter = '';
  List users = [
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/moh.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata("belkassem fares", "designer", "assets/start_app/samir.jpg"),
    profiledata("belkassem mohammed", "Software Developper",
        "assets/start_app/fares.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem amir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata("belkassem fares", "designer", "assets/start_app/samir.jpg"),
    profiledata("belkassem mohammed", "Software Developper",
        "assets/start_app/fares.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem amir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem amir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata("belkassem fares", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem sami", "Software Developper", "assets/start_app/fares.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    var data = users.where((countryone) {
      return countryone.name.toLowerCase().contains("$filter".toLowerCase());
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Experts'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              onChanged: (text) {
                setState(() {
                  filter = text;
                  print("filterwla $filter");
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "put your user name"),
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: data.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return profileviewcard(data[index].name,
                        data[index].fonction, data[index].image_url);
                    ;
                  })),
        ],
      ),
    );
  }
}
