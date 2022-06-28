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
  final list_countries = ["Bac+1"];

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
              width: 10,
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
                Text("Change Faculty"),
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
                Text("Change Spiciality"),
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
                Text("Change Language"),
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
