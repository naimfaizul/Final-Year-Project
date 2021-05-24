import 'package:final_year_project/SucessfullyRegister.dart';
import 'package:final_year_project/SucessfullyUpdate.dart';
import 'package:flutter/material.dart';

class UpdateUser extends StatefulWidget {
  @override
  _UpdateUserState createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  navigateToSuccessfullyUpdated() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SucessfullyUpdate()));
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
                            validator: (input) {
                              if (input.isEmpty) return 'Enter Name';
                            },
                            decoration: InputDecoration(
                                labelText: 'Name',
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            // onSaved: (input) => _name = input
                          ),
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
                              if (input.isEmpty) return 'Enter Email';
                            },
                            decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            // onSaved: (input) => _email = input
                          ),
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
                              if (input.length < 6)
                                return 'Minimum 6 Character';
                            },
                            decoration: InputDecoration(
                                labelText: 'Password',
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            obscureText: true,
                            // onSaved: (input) => _password = input
                          ),
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
