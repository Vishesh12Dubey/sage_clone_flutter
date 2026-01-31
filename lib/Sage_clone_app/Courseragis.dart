import 'package:flutter/material.dart';
class Courseragis extends StatefulWidget {
  const Courseragis({super.key});

  @override
  State<Courseragis> createState() => _CourseragisState();
}

class _CourseragisState extends State<Courseragis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('registration.JPG')),
            
    );
  }
}
