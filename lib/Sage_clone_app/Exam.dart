import 'package:flutter/material.dart';
class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('Exaam.JPG')),
    );
  }
}
