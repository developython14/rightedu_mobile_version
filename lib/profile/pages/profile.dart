import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  var email;
  var password;
  Future<void> profiledata() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('name');
      password = prefs.getString('password');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profiledata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80.0),
              child: Image.asset(
                "assets/start_app/fares.jpg",
                height: 150.0,
                width: 150.0,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "$email",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$password",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            GFRating(
              value: 3,
              color: Colors.yellow,
              onChanged: (value) {},
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text('Edit Profile'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text('Setting'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.history, color: Colors.blue),
                title: Text('Historique'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.credit_card, color: Colors.blue),
                title: Text('Payments cards'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.help_center, color: Colors.blue),
                title: Text('Help and faq'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.blue),
                title: Text('Logout'),
              ),
            ),
          ]),
    )));
  }
}
