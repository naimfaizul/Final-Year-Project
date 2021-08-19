import 'package:final_year_project/attendance/attendanceRecord.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

class SelectMosque extends StatefulWidget {
  @override
  _SelectMosqueState createState() => _SelectMosqueState();
}

class _SelectMosqueState extends State<SelectMosque> {
  String _location;
  navigateToAttendanceRecord() async {
    var response = await http.post(
        Uri.parse('http://10.0.2.2:8000/api/attendance'),
        body: {"email": globals.email, "location": _location});
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Attendance recorded!"),
      ));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AttendanceRecord()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Recording attendance failed! Please try again..."),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Attendance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 150.0,
              height: 120.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/location.jpg'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.grey[100],
              elevation: 2,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8,
                  decoration: InputDecoration.collapsed(
                      hintText: "Add Your Current Location"),
                  onChanged: (value) => _location = value,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                      onPressed: navigateToAttendanceRecord,
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
