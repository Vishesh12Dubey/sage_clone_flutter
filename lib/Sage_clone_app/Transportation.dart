import 'package:flutter/material.dart';
class Transportation extends StatefulWidget {
  const Transportation({super.key});

  @override
  State<Transportation> createState() => _TransportationState();
}

class _TransportationState extends State<Transportation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Transportation'),
    backgroundColor: Colors.red.shade800,
    centerTitle: true,
    ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('transport.JPG')),
    );

  }
}
