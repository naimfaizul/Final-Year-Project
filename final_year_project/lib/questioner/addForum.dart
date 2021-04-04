import 'package:flutter/material.dart';

class AddForum extends StatefulWidget {
  @override
  _AddForumState createState() => _AddForumState();
}

class _AddForumState extends State<AddForum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Forum'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 8,
                decoration: InputDecoration.collapsed(
                    hintText: "Add Question to the moderator !"),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  minWidth: 300,
                  color: Colors.green[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child:
                      new Text('Submit', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
