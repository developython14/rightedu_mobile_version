import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class editprofile extends StatefulWidget {
  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  final _formKey = GlobalKey<FormState>();
  File? identity;
  String? username = '';
  String? email = '';
  String? newpassword = '';
  String? newnumberphone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('edit profile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Image.asset(
                      'assets/start_app/moh.jpg',
                      height: 250,
                      width: 250,
                    )),
                Positioned(
                  left: 110,
                  top: 130,
                  child: IconButton(
                      onPressed: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();

                        if (result != null) {
                          setState(() {
                            identity = File(result.files.single.path!);
                          });
                        } else {
                          // User canceled the picker
                        }
                      },
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.blue,
                        size: 40,
                      )),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.people_alt),
                            border: UnderlineInputBorder(),
                            labelText: 'edit your username',
                            hintText: 'edit your username',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: UnderlineInputBorder(),
                            labelText: 'edit your email',
                            hintText: 'edit your email',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: UnderlineInputBorder(),
                            labelText: 'your new password',
                            hintText: 'write your new password',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: UnderlineInputBorder(),
                            labelText: 'confirm new password',
                            hintText: 'write your new password',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            border: UnderlineInputBorder(),
                            labelText: 'your new phone number',
                            hintText: 'write your new phone number',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          text: "update your informations",
                          fullWidthButton: true,
                          size: GFSize.LARGE,
                        ),
                      ],
                    )),
              )
            ],
          )),
        ),
      ),
    );
  }
}
