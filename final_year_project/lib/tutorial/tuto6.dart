import 'package:flutter/material.dart';

class Topic6 extends StatefulWidget {
  @override
  _Topic6State createState() => _Topic6State();
}

class _Topic6State extends State<Topic6> {
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
                                    'title topic tu',
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
                                    child: Text('data '))
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
