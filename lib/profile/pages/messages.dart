import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GFSearchBar(
          searchList: list,
          searchQueryBuilder: (query, list) {
            return list
                .where(
                    (item) => item.toLowerCase().contains(query.toLowerCase()))
                .toList();
          },
          overlaySearchListItemBuilder: (item) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                item,
                style: const TextStyle(fontSize: 18),
              ),
            );
          },
          onItemSelected: (item) {
            setState(() {
              print('$item');
            });
          },
        ),
        Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/yacine.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha sellami',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/samir.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha paul',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha hacker',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/moh.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha pirate',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/samir.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha paul',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha hacker',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha hacker',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/moh.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha pirate',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/samir.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha paul',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha hacker',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha hacker',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/moh.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha pirate',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/samir.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha paul',
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
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/start_app/fares.jpg', width: 56.0),
            ),
            title: Text(
              'Mustapha hacker',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'ya kho arwah essye tji  is a makach kifach  line  and arwah ya kho rani lhenna'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}
