import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/loginpage/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intersignup extends StatefulWidget {
  @override
  State<intersignup> createState() => _intersignupState();
}

class _intersignupState extends State<intersignup> {
  String? name = '';
  String? password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name');
      password = prefs.getString('password');
    });
    print(name);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("name $name and pass is $password"),
              GFButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                text: "signup as student",
                icon: Icon(Icons.school),
              ),
              SizedBox(
                height: 25,
              ),
              GFButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signupmod');
                },
                text: "signup as moderator",
                icon: Icon(Icons.school),
              ),
              SizedBox(
                height: 25,
              ),
              GFButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signupmod');
                },
                text: "signup as professeur",
                icon: Icon(Icons.school),
              ),
            ]),
      ),
    );
  }
}
