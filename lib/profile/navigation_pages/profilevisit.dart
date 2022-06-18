import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class profilevist extends StatefulWidget {
  const profilevist({Key? key}) : super(key: key);

  @override
  State<profilevist> createState() => _profilevistState();
}

class _profilevistState extends State<profilevist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/start_app/covert.jpg',
                        height: 300,
                      )),
                  Positioned(
                    left: 120,
                    top: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/start_app/mustapha.jpg',
                          width: 150,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mustapha Belkassem',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Software Enginner',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            GFRating(
              value: 3.5,
              color: Colors.yellow,
              onChanged: (value) {},
            ),
            GFButton(
              onPressed: () {},
              text: "Hire Me",
              shape: GFButtonShape.pills,
              size: GFSize.LARGE,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.article,
                        size: 50,
                        color: Colors.red,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.public,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.work_outline,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_box,
                        size: 50,
                        color: Colors.blue,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'software engineer and data scientist i can help individuals and companies in the following operations :(flask/django)(numpy,scipy,matplotlib,seaborn ,d3,js,sckitlearn,pythorch,tensorflow) refdsgfsdgsdgfdsgsdgfdsgdfgdsgdfsgsfgsdfgfdgfsdgfdfgdfsgdfsgfgsdgfsgfdgds ',
              ),
            )
          ],
        )),
      ),
    );
  }
}
