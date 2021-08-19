import 'package:final_year_project/quiz/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;
import 'dart:convert';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int i = 0;
  Map groupVal = new Map();

  navigateToResult() async {
    int x = 0;
    for (var i in globals.questions) {
      x += 1;
    }
    if (groupVal.length != x) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please answer all the questions given!"),
      ));
    } else {
      print(json.encode(groupVal));
      var response = await http.post(Uri.parse('http://10.0.2.2:8000/api/quiz'),
          body: {"answers": json.encode(groupVal), "email": globals.email});
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Quiz Sent!"),
        ));
        globals.result = response.body;
        globals.answers = groupVal;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Result()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Sending quiz failed! Please try again..."),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: ListView(
          children: <Widget>[
            for (dynamic question in globals.questions)
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
                                    "Question ${question['id']}",
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
                                    question['question_text'],
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      for (dynamic option
                                          in question['options'])
                                        RadioListTile(
                                            title: Text(option['option']),
                                            value:
                                                "${question['id']},${option['id']},${option['correct']},${question['question_text']},${option['option']},${question['answer_explanation']}",
                                            groupValue:
                                                groupVal["${question['id']}"],
                                            onChanged: (value) {
                                              setState(() {
                                                groupVal["${question['id']}"] =
                                                    value;
                                                print(groupVal[
                                                    "${question['id']}"]);
                                              });
                                            }),
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
