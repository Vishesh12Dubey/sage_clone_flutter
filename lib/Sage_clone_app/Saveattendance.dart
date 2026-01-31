import 'package:flutter/material.dart';
class Saveattendance extends StatefulWidget {
  const Saveattendance({super.key});

  @override
  State<Saveattendance> createState() => _SaveattendanceState();
}

class _SaveattendanceState extends State<Saveattendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Save Attendance'),
    backgroundColor: Colors.red.shade800,
    centerTitle: true,
    ),
    body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Image.asset('saveattan.JPG')),
    );

    }
}
