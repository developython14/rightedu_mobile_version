import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/main.dart';
import 'package:right/profile/pages/compenant/profilecomponant.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class list_experts extends StatefulWidget {
  @override
  State<list_experts> createState() => _list_expertsState();
}

class _list_expertsState extends State<list_experts> {
  var filter = '';
  List users = [
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/moh.jpg"),
    profiledata(
        "belkassem abdelkader", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem rayene", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata("belkassem fares", "designer", "assets/start_app/samir.jpg"),
    profiledata("belkassem mohammed", "Software Developper",
        "assets/start_app/fares.jpg"),
    profiledata(
        "belkassem samer", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem jack", "Software Developper", "assets/start_app/1.jpg"),
    profiledata("belkassem mohammed", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem jack", "Software Developper", "assets/start_app/fares.jpg"),
    profiledata(
        "belkassem yassine", "Software Developper", "assets/start_app/3.jpg"),
    profiledata(
        "belkassem paul", "Software Developper", "assets/start_app/zaki12.jpg"),
    profiledata("belkassem billal", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem amir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata(
        "belkassem salim", "Software Developper", "assets/start_app/3.jpg"),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/list_experts');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        var mu = profiledata(jsonResponse[i]["name"],
            jsonResponse[i]["country"], "assets/start_app/3.jpg");
        setState(() {
          users.add(mu);
        });
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = users.where((countryone) {
      return countryone.name.toLowerCase().contains("$filter".toLowerCase());
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List OF Experts'),
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
