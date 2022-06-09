import 'dart:ffi';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  String? email = '';
  String? password = '';
  bool is_pass = true;
  final Color facebookColor = const Color(0xff39579A);

  Future<void> _savingdata() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  Future<void> login() async {
    final datatosend = {'email': email, 'password': password};
    final url = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com//api/login_student');
    final response = await http.post(url, body: convert.jsonEncode(datatosend));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      if (jsonResponse['message'] == 'login succesfly') {
        _showMyDialog('login succesfly', 'Go To home page');
      } else {
        _showMyDialog('something errors', 'try to correct your information');
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  gotohome() {
    Navigator.pushNamed(context, '/start');
  }

  goback() {
    Navigator.pop(context);
  }

  Future<void> _showMyDialog(message, note) async {
    // Obtain shared preferences.
    Map fun = {'login succesfly': gotohome, 'something errors': goback};
    Map col = {'login succesfly': Colors.green, 'something errors': Colors.red};

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', '$email');
    await prefs.setString('password', '$password');

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(message),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Icon(
                  Icons.emoji_emotions,
                  color: col[message],
                  size: 100,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(col[message]),
                    ),
                    onPressed: () {
                      fun[message]();
                    },
                    child: Text(note)),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: wid,
          color: Color.fromARGB(255, 255, 255, 255),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/start_app/0.jpg')),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          email = text;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: is_pass,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.password),
                            onPressed: () {
                              setState(() {
                                is_pass = !is_pass;
                              });
                            },
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (text) {
                          password = text;
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: 220,
                        child: ElevatedButton(
                            onPressed: () {
                              _savingdata();
                              // Validate returns true if the form is valid, or false otherwise.
                              login();
                            },
                            child: const Text(
                              'Login',
                            )),
                      ),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Or Login Using social media ",
                                style: TextStyle(color: Colors.grey))
                          ]),
                      SizedBox(height: 30),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Facebook,
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Twitter,
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      ),
                      SizedBox(height: 20),
                      Text('your are new to Right !!'),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 220,
                        child: ElevatedButton(
                          child: Text('registre'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/intersignup');
                          },
                        ),
                      )
                    ],
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
