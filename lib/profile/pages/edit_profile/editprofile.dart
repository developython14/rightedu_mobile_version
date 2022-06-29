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

  Future<void> savedata() async {
    final valid = _formKey.currentState!.validate();
    if (!valid) {
      return;
    }
    _formKey.currentState!.save();
  }

  File? identity;
  String? username = '';
  String? email = '';
  String? newpassword = '';
  String? confirmnewpassword = '';
  String? newnumberphone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Edit Profile',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
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
                  left: 80,
                  top: 90,
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
                        Icons.add_a_photo_rounded,
                        color: Color.fromARGB(239, 214, 9, 9),
                        size: 70,
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
                          onSaved: (text) {
                            username = text;
                          },
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
                          onSaved: (text) {
                            email = text;
                          },
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
                          onSaved: (text) {
                            newpassword = text;
                          },
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
                          onSaved: (text) {
                            confirmnewpassword = text;
                          },
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
                          onSaved: (text) {
                            newnumberphone = text;
                          },
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
                          onPressed: () async {
                            await savedata();
                            Map data = {
                              'username': username,
                              'email': email,
                              'newpassword': newpassword,
                              'confirmnewpassword': confirmnewpassword,
                              'phone': newnumberphone,
                            };
                            print(
                              'CEST REGLE BIEN TOT',
                            );
                            print(data);
                          },
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
