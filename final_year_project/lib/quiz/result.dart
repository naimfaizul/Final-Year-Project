import 'package:final_year_project/HomePage.dart';
import 'package:final_year_project/quiz/result.dart';
import 'package:flutter/material.dart';

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
        body: ListView(
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
                    height: 500,
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
                                  'Your Marks is 10/10',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Question',
                                        style: TextStyle(fontSize: 20),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Correct answer',
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Explanation',
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Question',
                                        style: TextStyle(fontSize: 20),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Correct answer',
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Explanation',
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Question',
                                        style: TextStyle(fontSize: 20),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Correct answer',
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(1),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        'Explanation',
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.green)))),
                      onPressed: navigateToHomePage,
                      child: Text(
                        'Go to HomePage',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
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
        ));
  }
}
