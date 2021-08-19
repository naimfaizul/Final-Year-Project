import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import 'dart:convert';

class Topic1 extends StatefulWidget {
  @override
  _Topic1State createState() => _Topic1State();
}

class _Topic1State extends State<Topic1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Topic'),
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Container(
                      height: 500,
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(1),
                                  child: Text(
                                    globals.topic['title'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                    margin: EdgeInsets.all(1),
                                    child: Text(globals.topic['note']))
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
