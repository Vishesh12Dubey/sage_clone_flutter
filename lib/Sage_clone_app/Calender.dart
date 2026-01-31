import 'package:flutter/material.dart';
class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('lan.JPG'),

    );
  }
}
