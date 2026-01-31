import 'package:flutter/material.dart';
class Grievance extends StatefulWidget {
  const Grievance({super.key});

  @override
  State<Grievance> createState() => _GrievanceState();
}

class _GrievanceState extends State<Grievance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grievance'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('grievance.JPG'),
    );
  }
}
