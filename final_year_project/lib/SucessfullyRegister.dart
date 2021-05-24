import 'package:final_year_project/Login.dart';
import 'package:flutter/material.dart';

class SucessfullyRegister extends StatefulWidget {
  @override
  _SucessfullyRegisterState createState() => _SucessfullyRegisterState();
}

class _SucessfullyRegisterState extends State<SucessfullyRegister> {
  navigateToLogin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registered'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              child: Center(
                child: Text(
                  'Successfuly Created !',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 350,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.green)))),
                onPressed: navigateToLogin,
                child: Text(
                  'Go to Login Page',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
