import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class settingprofile extends StatefulWidget {
  const settingprofile({Key? key}) : super(key: key);

  @override
  State<settingprofile> createState() => _settingprofileState();
}

class _settingprofileState extends State<settingprofile> {
  String? country = '';
  String? faculty = '';
  String? spiciality = '';
  String? level = '';
  String? language = '';
  final list_countries = [
    "algeria",
    "algeria",
    "algeria",
  ];
  final list_faculties = ["alger", "alger", "alger"];
  final list_spicialities = ["math", "physique"];
  final list_levels = ["Bac+1", "Bac+2", "Bac+3", "Bac+4", "Bac+5"];
  final list_languages = ["english", "arabic"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.settings,
              size: 40,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Setting',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.flag,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Change country"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                      hint: Text('$country'),
                      items: list_countries.map(buildmen).toList(),
                      onChanged: (String? text) {
                        setState(() {
                          country = text ?? "";
                        });
                      }),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.school,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Change Faculty"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                      hint: Text('$faculty'),
                      items: list_faculties.map(buildmen).toList(),
                      onChanged: (String? text) {
                        setState(() {
                          faculty = text ?? "";
                        });
                      }),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.golf_course,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Change Spiciality"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                      hint: Text('$spiciality'),
                      items: list_spicialities.map(buildmen).toList(),
                      onChanged: (String? text) {
                        setState(() {
                          spiciality = text ?? "";
                        });
                      }),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.leaderboard,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Change Level"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                      hint: Text('$country'),
                      items: list_countries.map(buildmen).toList(),
                      onChanged: (String? text) {
                        setState(() {
                          country = text ?? "";
                        });
                      }),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.language,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Change Language"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                      hint: Text('$language'),
                      items: list_languages.map(buildmen).toList(),
                      onChanged: (String? text) {
                        setState(() {
                          language = text ?? "";
                        });
                      }),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GFButton(
              onPressed: () {},
              text: "Save changes",
              blockButton: true,
              size: GFSize.LARGE,
            ),
          ],
        ),
      )),
    );
  }
}

DropdownMenuItem<String> buildmen(String item) =>
    DropdownMenuItem(value: item, child: Text('$item'));
