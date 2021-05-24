import 'package:final_year_project/quiz/result.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

enum SingingCharacter { lafayette, jefferson, unta, khaldai }

class _QuizState extends State<Quiz> {
  SingingCharacter _character = SingingCharacter.lafayette;

  navigateToResult() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Result()));
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
                                  'Question ID',
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
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'apakah nasi???????????????????????????????????????????????????/???????',
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('Lafayette'),
                                      value: SingingCharacter.lafayette,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('Thomas Jefferson'),
                                      value: SingingCharacter.jefferson,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('unta'),
                                      value: SingingCharacter.unta,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('khaldai'),
                                      value: SingingCharacter.khaldai,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
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
                                  'Question ID',
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
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'apakah nasi???????????????????????????????????????????????????/???????',
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('Lafayette'),
                                      value: SingingCharacter.lafayette,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('Thomas Jefferson'),
                                      value: SingingCharacter.jefferson,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('unta'),
                                      value: SingingCharacter.unta,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('khaldai'),
                                      value: SingingCharacter.khaldai,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
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
                                  'Question ID',
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
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'apakah nasi???????????????????????????????????????????????????/???????',
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('Lafayette'),
                                      value: SingingCharacter.lafayette,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('Thomas Jefferson'),
                                      value: SingingCharacter.jefferson,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('unta'),
                                      value: SingingCharacter.unta,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    RadioListTile<SingingCharacter>(
                                      title: const Text('khaldai'),
                                      value: SingingCharacter.khaldai,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
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
                      onPressed: navigateToResult,
                      child: Text(
                        'Submit',
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
