import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/main.dart';
import 'package:right/profile/pages/compenant/profilecomponant.dart';

class list_experts extends StatefulWidget {
  @override
  State<list_experts> createState() => _list_expertsState();
}

class _list_expertsState extends State<list_experts> {
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
    profiledata("belkassem Mustapha", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem 2", "Software Developper", "assets/start_app/fares.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "put your user name"),
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: users.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 20,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return profileviewcard(users[index].name,
                        users[index].fonction, users[index].image_url);
                    ;
                  })),
        ],
      ),
    );
  }
}
