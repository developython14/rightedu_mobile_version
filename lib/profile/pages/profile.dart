import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
              "Belkassem Mustapha",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Software Engineer",
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
                leading: Icon(Icons.person),
                title: Text('Edit Profile'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.history),
                title: Text('Historique'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Payments cards'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.help_center),
                title: Text('Help and faq'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ),
          ]),
    )));
  }
}
