import 'package:final_year_project/tutorial/topic1.dart';
// import 'package:final_year_project/tutorial/tuto10.dart';
// import 'package:final_year_project/tutorial/tuto2.dart';
// import 'package:final_year_project/tutorial/tuto3.dart';
// import 'package:final_year_project/tutorial/tuto4.dart';
// import 'package:final_year_project/tutorial/tuto5.dart';
// import 'package:final_year_project/tutorial/tuto6.dart';
// import 'package:final_year_project/tutorial/tuto7.dart';
// import 'package:final_year_project/tutorial/tuto8.dart';
// import 'package:final_year_project/tutorial/tuto9.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:final_year_project/HomePage.dart';
import '../globals.dart' as globals;
import 'dart:convert';

class SelectTuto extends StatefulWidget {
  @override
  _SelectTutoState createState() => _SelectTutoState();
}

class _SelectTutoState extends State<SelectTuto> {
  navigateTotopic(dynamic topic) async {
    globals.topic = topic;
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tutorial'),
        ),
        body: ListView(
          children: <Widget>[
            for (dynamic topic in globals.topics)
              GestureDetector(
                onTap: () {
                  navigateTotopic(topic);
                },
                child: Card(
                  margin: EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Container(
                        height: 100,
                        padding: new EdgeInsets.only(top: 10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 150.0,
                              height: 100.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/topic.png'),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(1),
                                    child: Text(
                                      topic["title"],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
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
              ),
          ],
        ));
  }
}
