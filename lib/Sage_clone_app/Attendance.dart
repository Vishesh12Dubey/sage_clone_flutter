import 'package:flutter/material.dart';
class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Status'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('Atten.JPG')),
    );
  }
}
