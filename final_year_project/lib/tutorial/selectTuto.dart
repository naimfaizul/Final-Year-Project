import 'package:final_year_project/tutorial/topic1.dart';
import 'package:final_year_project/tutorial/tuto10.dart';
import 'package:final_year_project/tutorial/tuto2.dart';
import 'package:final_year_project/tutorial/tuto3.dart';
import 'package:final_year_project/tutorial/tuto4.dart';
import 'package:final_year_project/tutorial/tuto5.dart';
import 'package:final_year_project/tutorial/tuto6.dart';
import 'package:final_year_project/tutorial/tuto7.dart';
import 'package:final_year_project/tutorial/tuto8.dart';
import 'package:final_year_project/tutorial/tuto9.dart';
import 'package:flutter/material.dart';
import 'package:final_year_project/HomePage.dart';

class SelectTuto extends StatefulWidget {
  @override
  _SelectTutoState createState() => _SelectTutoState();
}

class _SelectTutoState extends State<SelectTuto> {
  navigateTotopic1() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic1()));
  }

  navigateTotopic2() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic2()));
  }

  navigateTotopic3() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic3()));
  }

  navigateTotopic4() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic4()));
  }

  navigateTotopic5() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic5()));
  }

  navigateTotopic6() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic6()));
  }

  navigateTotopic7() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic7()));
  }

  navigateTotopic8() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic8()));
  }

  navigateTotopic9() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic9()));
  }

  navigateTotopic10() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Topic10()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tutorial'),
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: navigateTotopic1,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic2,
              child: Card(
                margin: EdgeInsets.all(5),
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic3,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic4,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic5,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic6,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic7,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic8,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic9,
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
                                    'hajj and umrah topic bla',
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
            GestureDetector(
              onTap: navigateTotopic10,
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
                                    'hajj and umrah topic bla',
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
