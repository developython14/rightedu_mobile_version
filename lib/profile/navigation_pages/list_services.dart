import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';



class list_services extends StatefulWidget {
  const list_services({ Key? key }) : super(key: key);

  @override
  State<list_services> createState() => _list_servicesState();
}

class _list_servicesState extends State<list_services> {
   Widget my = Container(
      height: 250,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
      ));
  @override
  Widget build(BuildContext context) {
        List<Widget> data = [my, my, my, my, my, my, my, my, my, my];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Services'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter Services name',
            ),
          ),
          GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: data)
        ],
      ),
    );
  }
}