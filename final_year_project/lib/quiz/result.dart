import 'package:final_year_project/HomePage.dart';
import 'package:final_year_project/quiz/result.dart';
import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  navigateToHomePage() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        height: 800,
                        padding: new EdgeInsets.only(top: 10.0),
                        child: new Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(1),
                                    child: Text(
                                      'Your Marks is ${globals.result}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  for (dynamic answer in globals.answers.values)
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 0,
                                          top: 0,
                                          right: 0,
                                          bottom: 27),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.all(1),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Text(
                                              answer.split(',')[3],
                                              style: TextStyle(fontSize: 20),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(1),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Text(
                                              "Your answer: ${answer.split(',')[4]}",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: answer.split(',')[2] ==
                                                          "1"
                                                      ? Colors.green
                                                      : Colors.red),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(1),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Text(
                                              answer.split(',')[5],
                                              style: TextStyle(fontSize: 15),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 250,
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
                            'Go to HomePage',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
