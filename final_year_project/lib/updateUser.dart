import 'package:final_year_project/SucessfullyRegister.dart';
import 'package:final_year_project/SucessfullyUpdate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'globals.dart' as globals;

class UpdateUser extends StatefulWidget {
  @override
  _UpdateUserState createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  String _password = "", _name = globals.name;
  navigateToSuccessfullyUpdated() async {
    print(_name);
    print(_password);
    if (_password.length != 0) if (_password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password is too short!"),
      ));
      return;
    }

    var response = await http.post(Uri.parse('http://10.0.2.2:8000/api/update'),
        body: {"email": globals.email, "password": _password, "name": _name});
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Update Success!"),
      ));
      globals.name = _name;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SucessfullyUpdate()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Server Error! Please try again..."),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Update User')),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 50),
                  height: 200,
                  child: Image(image: AssetImage("assets/logo.png")),
                ),
                Container(
                  child: Form(
                    // key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          child: TextFormField(
                              initialValue: globals.name,
                              validator: (input) {
                                if (input.isEmpty) return 'Enter Name';
                              },
                              decoration: InputDecoration(
                                  labelText: "Name",
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0))),
                              onChanged: (input) => _name = input),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          child: TextFormField(
                              validator: (input) {
                                if (input.length != 0) if (input.length < 6)
                                  return 'Minimum 6 Character';
                              },
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0))),
                              obscureText: true,
                              onChanged: (input) => _password = input),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        side:
                                            BorderSide(color: Colors.green)))),
                            onPressed: navigateToSuccessfullyUpdated,
                            child: Text(
                              'UPDATE',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
