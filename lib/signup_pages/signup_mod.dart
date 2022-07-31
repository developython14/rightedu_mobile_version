import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/size/gf_size.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';

class Service {
  Service({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}

class signupmod extends StatefulWidget {
  const signupmod({Key? key}) : super(key: key);

  @override
  State<signupmod> createState() => _signupmodState();
}

class _signupmodState extends State<signupmod> {
  String? avalibality = '';
  String? city = '';
  String? country = '';
  String? current_job = '';
  File? cv;
  DateTime data = DateTime(4, 17, 1998);
  String? date_of_birth = '';
  File? degree;
  String? degree_title = '';
  String? email = '';
  File? experience;
  String? faculty = '';
  String? gender = '';
  File? identity;
  bool is_pass = true;
  String? language = '';
  final list_countries = ["Bac+1"];
  final list_faculties = ["Bac+1"];
  final list_levels = ["Moderator", "Professeur"];
  final list_services = ["Moderator", "Professeur"];
  final list_spicialities = ["Bac+1"];
  String? name = '';
  String? participation = '';
  String? password = '';
  String? rpassword = '';
  String? phone = '';
  String? phone_second = '';
  String? spiciality = '';
  String? spiciality_exacte = '';
  final pwcontroller = TextEditingController();
  static List<Service> _services = [];

  final _formKey = GlobalKey<FormState>();
  final _multiSelectKey = GlobalKey<FormFieldState>();
  List _selectedservices = [];

  @override
  void initState() {
    getdatacountries();
    getdatafaculties();
    getdataspiciality();
    getdataserives();
    // TODO: implement initState
    super.initState();
  }

  Future<void> savedata() async {
    final valid = _formKey.currentState!.validate();
    if (!valid) {
      return;
    }
    _formKey.currentState!.save();
  }

  Future<void> signupmod() async {
    print('here fine in frot');
    savedata();
    final datatosend = {
      'username': name.toString(),
      'email': email.toString(),
      'password': password.toString(),
      'phone': phone.toString(),
      'phone_second': phone_second.toString(),
      'speciality': spiciality.toString(),
      'gender': gender.toString(),
      'country': country.toString(),
      "city": city.toString(),
      'faculty': faculty.toString(),
      "participation": participation.toString(),
      "degree_title": degree_title.toString(),
      "avalibality": avalibality.toString(),
      "date_of_birth": date_of_birth.toString(),
      "services": _selectedservices.toString(),
      "language": language.toString(),
      "job": current_job.toString(),
      "spicialte_exacte": spiciality_exacte.toString()
    };
    final url = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com//api/signup_mod');
    var request = http.MultipartRequest('POST', url);
    final headers = {'Content-type': 'multipart/form-data'};
    request.headers.addAll(headers);
    request.fields.addAll(datatosend);
    final cv_file = http.MultipartFile.fromBytes('cv', await cv!.readAsBytes(),
        filename: cv!.path.split("/").last);
    request.files.add(cv_file);
    final experience_file = http.MultipartFile.fromBytes(
        'experience', await experience!.readAsBytes(),
        filename: cv!.path.split("/").last);
    request.files.add(experience_file);
    final degree_file = http.MultipartFile.fromBytes(
        'degree', await experience!.readAsBytes(),
        filename: cv!.path.split("/").last);
    request.files.add(degree_file);
    final identity_file = http.MultipartFile.fromBytes(
        'identity', await experience!.readAsBytes(),
        filename: cv!.path.split("/").last);
    request.files.add(identity_file);
    var push = await request.send();
    print('here fine in frot');
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Message'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('salam alikom something is error'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  getdatacountries() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/list_countries');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        setState(() {
          list_countries.add(jsonResponse[i]["country"]);
        });
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getdataserives() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/ls_services');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        Service serv = Service(id: i, name: jsonResponse[i]);
        setState(() {
          _services.add(serv);
        });
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getdatafaculties() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/list_faculties');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        setState(() {
          list_faculties.add(jsonResponse[i]["faculty"]);
        });
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getdataspiciality() async {
    var test = Uri.parse(
        'https://evening-savannah-43647.herokuapp.com/api/list_faculties');
    var response = await http.get(test);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (var i = 0; i < jsonResponse.length; i++) {
        setState(() {
          list_spicialities.add(jsonResponse[i]["faculty"]);
        });
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: wid,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/start_app/2.jpg')),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Join Us',
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Name complete',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          name = text;
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Date Of Birth : '),
                          Text("${data.year}/${data.month}/${data.day}"),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            DateTime? date = await showDatePicker(
                                context: context,
                                initialDate: DateTime(2000),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2100));
                            if (date == null) return;
                            setState(() {
                              data = date;
                            });
                          },
                          child: Text("choose your date ")),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Select Gender:"),
                        ],
                      ),
                      SizedBox(height: 10),
                      ListTile(
                          title: Text('Male'),
                          leading: Radio(
                              value: "Male",
                              groupValue: gender,
                              onChanged: (String? text) {
                                setState(() {
                                  gender = text;
                                });
                              })),
                      SizedBox(height: 10),
                      ListTile(
                          title: Text('Female'),
                          leading: Radio(
                              value: "Female",
                              groupValue: gender,
                              onChanged: (String? text) {
                                setState(() {
                                  gender = text;
                                });
                              })),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Select country"),
                          DropdownButton(
                              hint: Text('$country'),
                              items: list_countries.map(buildmen).toList(),
                              onChanged: (String? text) {
                                setState(() {
                                  country = text ?? "";
                                });
                              })
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Select City"),
                          DropdownButton(
                              hint: Text('$country'),
                              items: list_countries.map(buildmen).toList(),
                              onChanged: (String? text) {
                                setState(() {
                                  city = text ?? "";
                                });
                              })
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Select Faculty"),
                          DropdownButton(
                              hint: Text('$faculty'),
                              items: list_faculties.map(buildmen).toList(),
                              onChanged: (String? text) {
                                setState(() {
                                  faculty = text ?? "";
                                });
                              })
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Select Speciality "),
                          DropdownButton(
                              hint: Text('$spiciality'),
                              items: list_spicialities.map(buildmen).toList(),
                              onChanged: (String? text) {
                                setState(() {
                                  spiciality = text ?? "";
                                });
                              })
                        ],
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid name of degree';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Degree',
                            prefixIcon: Icon(Icons.grade),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          degree_title = text;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid name of spiciality';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'exactly spiciality',
                            prefixIcon: Icon(Icons.science),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          spiciality_exacte = text;
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Participation as"),
                          DropdownButton(
                              hint: Text('$participation'),
                              items: list_levels.map(buildmen).toList(),
                              onChanged: (String? text) {
                                setState(() {
                                  participation = text ?? "";
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Availibality:"),
                        ],
                      ),
                      SizedBox(height: 10),
                      ListTile(
                          title: Text('5H'),
                          leading: Radio(
                              value: "5H",
                              groupValue: avalibality,
                              onChanged: (String? text) {
                                setState(() {
                                  avalibality = '5H';
                                });
                              })),
                      ListTile(
                          title: Text('10H'),
                          leading: Radio(
                              value: "10H",
                              groupValue: avalibality,
                              onChanged: (String? text) {
                                setState(() {
                                  avalibality = '10H';
                                });
                              })),
                      ListTile(
                          title: Text('15H'),
                          leading: Radio(
                              value: "15H",
                              groupValue: avalibality,
                              onChanged: (String? text) {
                                setState(() {
                                  avalibality = '15H';
                                });
                              })),
                      ListTile(
                          title: Text('20H'),
                          leading: Radio(
                              value: "20H",
                              groupValue: avalibality,
                              onChanged: (String? text) {
                                setState(() {
                                  avalibality = '20H';
                                });
                              })),
                      ListTile(
                          title: Text('+25H'),
                          leading: Radio(
                              value: "+25H",
                              groupValue: avalibality,
                              onChanged: (String? text) {
                                setState(() {
                                  avalibality = '+25H';
                                });
                              })),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('File Required',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26)),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('your Cv'),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              setState(() {
                                cv = File(result.files.single.path!);
                              });
                            } else {
                              // User canceled the picker
                            }
                          },
                          child: Column(
                            children: [
                              Icon(Icons.upload_file),
                              Text('upload Cv')
                            ],
                          )),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('your Degree'),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              setState(() {
                                degree = File(result.files.single.path!);
                              });
                            } else {
                              // User canceled the picker
                            }
                          },
                          child: Column(
                            children: [
                              Icon(Icons.upload_file),
                              Text('upload degree')
                            ],
                          )),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('your experience province'),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              setState(() {
                                experience = File(result.files.single.path!);
                              });
                            } else {
                              // User canceled the picker
                            }
                          },
                          child: Column(
                            children: [
                              Icon(Icons.upload_file),
                              Text('upload experience proove')
                            ],
                          )),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('your identify card'),
                        ],
                      ),
                      ElevatedButton(
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
                          child: Column(
                            children: [
                              Icon(Icons.upload_file),
                              Text('upload identity')
                            ],
                          )),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('Services your provided'),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            MultiSelectBottomSheetField(
                              initialChildSize: 0.4,
                              listType: MultiSelectListType.CHIP,
                              searchable: true,
                              buttonText: Text("Services Provided:"),
                              title: Text("Services"),
                              items: _services
                                  .map((service) => MultiSelectItem<Service>(
                                      service, service.name))
                                  .toList(),
                              onConfirm: (values) {
                                _selectedservices = values;
                                print(_selectedservices.map((e) => e.name));
                              },
                              chipDisplay: MultiSelectChipDisplay(
                                onTap: (value) {
                                  setState(() {
                                    _selectedservices.remove(value);
                                  });
                                },
                              ),
                            ),
                            _selectedservices == null ||
                                    _selectedservices.isEmpty
                                ? Container(
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "None selected",
                                      style: TextStyle(color: Colors.black54),
                                    ))
                                : Container(),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          email = text;
                        },
                        validator: (value) {
                          if (EmailValidator.validate(value)) {
                            return null;
                          }
                          return 'Please enter a valid email';
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: is_pass,
                        controller: pwcontroller,
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
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          password = text;
                        },
                      ),
                      SizedBox(height: 20),
                      FlutterPwValidator(
                          controller: pwcontroller,
                          minLength: 6,
                          uppercaseCharCount: 2,
                          numericCharCount: 3,
                          specialCharCount: 1,
                          width: 400,
                          height: 150,
                          onSuccess: () {}),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: is_pass,
                        decoration: InputDecoration(
                            hintText: 'Repeat Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.password),
                              onPressed: () {
                                setState(() {
                                  is_pass = !is_pass;
                                });
                              },
                            ),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          rpassword = text;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Phone number',
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          phone = text;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Second Phone number',
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder()),
                        onSaved: (text) {
                          phone_second = text;
                        },
                      ),
                      SizedBox(height: 20),
                      GFButton(
                        onPressed: () async {
                          if (1 == 1) {
                            await showDialog(
                              context: context,
                              builder: (context) =>
                                  FutureProgressDialog(signupmod()),
                            );
                          }
                        },
                        text: "Sign Up",
                        shape: GFButtonShape.pills,
                        fullWidthButton: true,
                        size: GFSize.LARGE,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    ));
  }
}

DropdownMenuItem<String> buildmen(String item) =>
    DropdownMenuItem(value: item, child: Text('$item'));
