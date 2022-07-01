import 'package:flutter/material.dart';

class recivedmessage extends StatelessWidget {
  String textmessage;
  recivedmessage(this.textmessage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.45),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textmessage,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class sendermessage extends StatelessWidget {
  String textmessage;
  sendermessage(this.textmessage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.45),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textmessage,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class datearker extends StatefulWidget {
  const datearker({Key? key}) : super(key: key);

  @override
  State<datearker> createState() => _datearkerState();
}

class _datearkerState extends State<datearker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 100,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'tuy,23/03/1998',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 10),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
        ),
      ),
    );
  }
}

class imagemessage extends StatelessWidget {
  String image_url;
  bool me;
  imagemessage(this.image_url, this.me);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: me == true ? Alignment.centerRight : Alignment.centerLeft,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          image_url,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

class AudioMessage extends StatelessWidget {
  bool playsound = false;
  double kDefaultPadding = 8.0;
  Color kPrimaryColor = Colors.blue;
  final playsound = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.55,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75,
            vertical: kDefaultPadding / 2.5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPrimaryColor.withOpacity(2 > 3 ? 1 : 0.1),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: (() {
                  setState(() {
                    playsound = !playsound;
                    print(playsound);
                  });
                }),
                icon: Icon(
                  playsound == true ? Icons.pause : Icons.play_arrow,
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: 2 > 3
                            ? Colors.white
                            : kPrimaryColor.withOpacity(0.4),
                      ),
                      Positioned(
                        left: 0,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: 2 > 3 ? Colors.white : kPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "0.55",
                style:
                    TextStyle(fontSize: 12, color: 2 > 3 ? Colors.white : null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
