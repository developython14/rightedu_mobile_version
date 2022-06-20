import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class profileviewcard extends StatelessWidget {
  String name;
  String fonction;
  String image_url;
  profileviewcard(this.name, this.fonction, this.image_url);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.grey,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image_url,
                height: 50.0,
                width: 50.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(fonction),
            SizedBox(
              height: 10,
            ),
            GFButton(
              onPressed: () {
                Navigator.pushNamed(context, '/visprofile');
              },
              text: "Contact",
              shape: GFButtonShape.pills,
            ),
          ]),
        ),
      ),
    );
  }
}

class profiledata {
  String name;
  String fonction;

  String image_url;

  profiledata(this.name, this.fonction, this.image_url);
}

class usercard extends StatelessWidget {
  String name;
  String fonction;
  String image_url;
  usercard(this.name, this.fonction, this.image_url);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(
              "assets/start_app/samir.jpg",
              height: 100,
              width: 150,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              fonction,
              style: TextStyle(color: Color.fromARGB(255, 87, 85, 85)),
            ),
            GFButton(
              onPressed: () {},
              text: "Hire Me.",
              shape: GFButtonShape.pills,
              size: GFSize.LARGE,
            ),
          ],
        ),
      ),
    );
  }
}
