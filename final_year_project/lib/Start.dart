import 'SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Login.dart';
import 'Login.dart';
import 'SignUp.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  navigateToLogin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  navigateToRegister() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0),
            Container(
              height: 200,
              child: Image(
                image: AssetImage('assets/logotabunghaji.jpg'),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                  text: 'WELCOME TO',
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' HAJJ AND UMRAH',
                        style: TextStyle(fontSize: 24.0))
                  ]),
            ),
            Text(
              'COURSE MANAGEMENT SYSTEM',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  onPressed: navigateToLogin,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.green,
                ),
                SizedBox(
                  width: 30.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  onPressed: navigateToRegister,
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 40.0),
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
