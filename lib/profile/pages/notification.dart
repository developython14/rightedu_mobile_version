import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  Widget my = Container(
      height: 250,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
    return ListView(children: [
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/moh.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/samir.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/0.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/1.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/2.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
          ),
          title: Text(
            'Mustapha Belkassem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'ya kho arwah essye tji  is a makach kifach and arwah ya kho rani lhenna'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
    ]);
  }
}
