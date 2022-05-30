import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:right/profile/pages/compenant/profilecomponant.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  List cards = [
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/moh.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/samir.jpg"),
    profiledata(
        "belkassem 2", "Software Developper", "assets/start_app/fares.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/3.jpg"),
    profiledata("belkassem Mustapha", "Software Developper",
        "assets/start_app/zaki12.jpg"),
    profiledata("belkassem Mustapha", "designer", "assets/start_app/0.jpg"),
    profiledata(
        "belkassem samir", "Software Developper", "assets/start_app/1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 25),
                  Text("Hi Mustapha ? Lets Start",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            GFSearchBar(
              searchList: list,
              searchQueryBuilder: (query, list) {
                return list;
              },
              overlaySearchListItemBuilder: (item) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "mustapha",
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 25),
                Text("Explore Our Services:",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 25),
            GFCarousel(
              items: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 25),
                Text("Explore Our Blogs :",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 25),
            GFCarousel(
              items: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 25),
                Text("Our Best Experts :",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 25),
            Container(
                height: 225,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return profileviewcard(cards[index].name,
                        cards[index].fonction, cards[index].image_url);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: cards.length,
                )),
          ],
        ),
      ),
    );
  }
}
