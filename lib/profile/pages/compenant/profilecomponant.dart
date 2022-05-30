import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class profileviewcard extends StatelessWidget {
  const profileviewcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/start_app/moh.jpg",
              height: 80.0,
              width: 80.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Belkassem Mustapha",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text('software developper'),
          SizedBox(
            height: 10,
          ),
          GFButton(
            onPressed: () {},
            text: "contact",
            shape: GFButtonShape.pills,
          ),
        ]),
      ),
    );
  }
}



class profiledata {
  String name;
  String fonction;
  String image_ulr;
   profiledata(name, fonction,image_ulr) {
    this.name = name;
    this.fonction = fonction;
    this.image_ulr = image_ulr;
  }
}