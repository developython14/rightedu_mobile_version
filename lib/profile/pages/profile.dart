import 'package:flutter/material.dart';

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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              "assets/start_app/fares.jpg",
              height: 150.0,
              width: 150.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("mustapha"),
              Text("free"),
              Text("aboone"),
            ],
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('edit profile'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('setting'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('payments cards'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.help_center),
              title: Text('help and faq'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ),
        ])));
  }
}
