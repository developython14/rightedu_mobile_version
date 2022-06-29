import 'package:flutter/material.dart';

class recivedmessage extends StatelessWidget {
  const recivedmessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.45),
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'salam alikom cv khoya samir bkhir elhamdoula',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
        ),
      ),
    );
  }
}

class sendermessage extends StatelessWidget {
  const sendermessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.45),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'elhm😍😍😍 free  alikom cv khoya samir',
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
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
