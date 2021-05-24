import 'package:final_year_project/SucessfullyRegister.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomePage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  navigateToCreateUSer() async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SucessfullyRegister()));
  }
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // String _name, _email, _password;

  // checkAuthentication() async {
  //   _auth.authStateChanges().listen((user) async {
  //     if (user != null) {
  //       Navigator.pushReplacementNamed(context, "/");

  //       // Navigator.push(
  //       //     context, MaterialPageRoute(builder: (context) => HomePage()));

  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.checkAuthentication();
  // }

  // signUp() async {
  //   if (_formKey.currentState.validate()) {
  //     _formKey.currentState.save();

  //     try {
  //       UserCredential user = await _auth.createUserWithEmailAndPassword(
  //           email: _email, password: _password);
  //       if (user != null) {
  //         // UserUpdateInfo updateuser = UserUpdateInfo();
  //         // updateuser.displayName = _name;
  //         //  user.updateProfile(updateuser);
  //         await _auth.currentUser.updateProfile(displayName: _name);
  //         // await Navigator.pushReplacementNamed(context,"/") ;

  //       }
  //     } catch (e) {
  //       showError(e.message);
  //       print(e);
  //     }
  //   }
  // }

  // showError(String errormessage) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('ERROR'),
  //           content: Text(errormessage),
  //           actions: <Widget>[
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Text('OK'))
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SignUp')),
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
                                labelText: ' Confirm Password',
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
                            onPressed: navigateToCreateUSer,
                            child: Text(
                              'SIGNUP',
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
