import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/compenant/services_copanant.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class list_services extends StatefulWidget {
  const list_services({Key? key}) : super(key: key);

  @override
  State<list_services> createState() => _list_servicesState();
}

class _list_servicesState extends State<list_services> {
  var filter = '';
  List services = [
    servicedata("belkassem Mustapha", "Software Developper",
        "assets/start_app/moh.jpg"),
    servicedata("belkassem Mustapha", "designer", "assets/start_app/samir.jpg"),
    servicedata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    servicedata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    servicedata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    servicedata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
    servicedata("belkassem Mustapha", "designer", "assets/start_app/samir.jpg"),
    servicedata(
        "belkassem 2", "Software Developper", "assets/start_app/fares.jpg"),
    servicedata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    servicedata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    servicedata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    servicedata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/list_services');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        var mu = servicedata(jsonResponse[i]["service_title"],
            jsonResponse[i]["service_type"], "assets/start_app/3.jpg");
        services.add(mu);
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = services.where((countryone) {
      return countryone.name.toLowerCase().contains("$filter".toLowerCase());
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Services right'),
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
                  itemCount: services.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return servicesviewcard(data[index].name,
                        data[index].fonction, data[index].image_url);
                    ;
                  })),
        ],
      ),
    );
  }
}
