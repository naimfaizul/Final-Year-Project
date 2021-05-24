import 'package:final_year_project/Start.dart';
import 'package:final_year_project/attendance/selectMosque.dart';
import 'package:final_year_project/questioner/addForum.dart';
import 'package:final_year_project/quiz/selectQuiz.dart';
import 'package:final_year_project/tutorial/selectTuto.dart';
import 'package:final_year_project/updateUser.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'declaration/images.dart';
import 'package:intl/intl.dart';
import 'attendance/selectMosque.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  // final Tutorial tutorial;
  // HomePage({this.tutorial});
}

class _HomePageState extends State<HomePage> {
  navigateToSelectMosque() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectMosque()));
  }

  navigateToAddForum() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddForum()));
  }

  navigateToSelectQuiz() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectQuiz()));
  }

  navigateToSelectTuto() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectTuto()));
  }

  navigateToStart() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Start()));
  }

  navigateToUpdateUser() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UpdateUser()));
  }

  int _currentIndex = 0;

  List cardList = [Item1(), Item2(), Item3(), Item4()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // User user;
  // bool isloggedin = false;

  // checkAuthentification() async {
  //   _auth.authStateChanges().listen((user) {
  //     if (user == null) {
  //       Navigator.of(context).pushReplacementNamed("start");
  //     }
  //   });
  // }

  // getUser() async {
  //   User firebaseUser = _auth.currentUser;
  //   await firebaseUser?.reload();
  //   firebaseUser = _auth.currentUser;

  //   if (firebaseUser != null) {
  //     setState(() {
  //       this.user = firebaseUser;
  //       this.isloggedin = true;
  //     });
  //   }
  // }

  // signOut() async {
  //   _auth.signOut();

  //   // final googleSignIn = GoogleSignIn();
  //   // await googleSignIn.signOut();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.checkAuthentification();
  //   this.getUser();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Dashboard'),
          actions: [
            PopupMenuButton<Text>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: navigateToStart,
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(1),
                                child: Icon(
                                  Icons.vpn_key,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1),
                                child: Text('Logout'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: navigateToUpdateUser,
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(1),
                                child: Icon(
                                  Icons.account_circle,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1),
                                child: Text('Profile'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 10,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
                GestureDetector(
                  onTap: navigateToSelectMosque,
                  child: Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: new Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Container(
                          height: 150,
                          padding: new EdgeInsets.only(top: 10.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                height: 150.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/attendance.png'),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(20),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Attendance',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        DateFormat('MM/dd/yyyy hh:mm:ss')
                                            .format(DateTime.now()),
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
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
                Container(
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: navigateToSelectQuiz,
                        child: Card(
                          margin: EdgeInsets.all(10),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: new Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width * 0.4,
                                padding: new EdgeInsets.only(top: 10.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 150.0,
                                      height: 150.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/quiz.png'),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: navigateToSelectTuto,
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: new Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width * 0.5,
                                padding: new EdgeInsets.only(top: 10.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: 150.0,
                                      height: 100.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/tutorials.png'),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: navigateToAddForum,
                        child: Card(
                          margin: EdgeInsets.all(10),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: new Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.94,
                                padding: new EdgeInsets.only(top: 10.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 150.0,
                                      height: 150.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/forum.png'),
                                              fit: BoxFit.fill)),
                                    ),
                                    Container(
                                      width: 200.0,
                                      height: 200.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/ask.png'),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/carousel_images/1.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/carousel_images/2.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/carousel_images/3.jpg',
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/carousel_images/4.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
