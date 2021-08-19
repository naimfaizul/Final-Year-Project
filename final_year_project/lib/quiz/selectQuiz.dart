import 'package:final_year_project/HomePage.dart';
import 'package:final_year_project/quiz/Quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;
import 'dart:convert';

class SelectQuiz extends StatefulWidget {
  @override
  _SelectQuizState createState() => _SelectQuizState();
}

class _SelectQuizState extends State<SelectQuiz> {
  navigateToHomePage() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  navigateToTakeQuiz() async {
    var response =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/questions'));
    if (response.statusCode == 200) {
      globals.questions = json.decode(response.body);
      print(globals.questions.toString());
      Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Loading questions failed! Please try again..."),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 150.0,
                    height: 150.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/result.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Your Previous Result :',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text(
                          globals.result.toString(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.green)))),
                          onPressed: navigateToTakeQuiz,
                          child: Text(
                            'Take New Quiz',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.green)))),
                          onPressed: navigateToHomePage,
                          child: Text(
                            'Back',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
