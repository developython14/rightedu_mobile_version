import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/compenant/post_widget.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class discover extends StatefulWidget {
  const discover({Key? key}) : super(key: key);

  @override
  State<discover> createState() => _discoverState();
}

class _discoverState extends State<discover> {
  List<Widget> posts = [];
  @override
  void initState() {
    getdata();
    // TODO: implement initState
    super.initState();
  }

  Future<void> getdata() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/list_experts');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        var mu = post_widget(jsonResponse[i]["name"], "assets/start_app/3.jpg",
            "assets/start_app/3.jpg");
        setState(() {
          posts.add(mu);
          posts.add(
            SizedBox(
              height: 20,
            ),
          );
        });
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: posts.length > 0
            ? Column(
                children: posts,
              )
            : Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  SpinKitFadingCircle(
                    color: Colors.blue,
                    size: 100,
                  ),
                ],
              ),
      )),
    );
  }
}
