import 'package:flutter/material.dart';
class Curriculum extends StatefulWidget {
  const Curriculum({super.key});

  @override
  State<Curriculum> createState() => _CurriculumState();
}

class _CurriculumState extends State<Curriculum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,

      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('ccurri.JPG')),
    );
  }
}
