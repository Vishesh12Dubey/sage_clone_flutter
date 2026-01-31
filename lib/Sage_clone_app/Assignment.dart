import 'package:flutter/material.dart';
class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Assignment'),
    backgroundColor: Colors.red.shade800,
    centerTitle: true,
    ),
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Image.asset('assignmentt.JPG')),
    );

  }
}
