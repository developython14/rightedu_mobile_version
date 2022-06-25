import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  final _formKey = GlobalKey<FormState>();
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
              Image.asset('assets/start_app/moh.jpg'),
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
