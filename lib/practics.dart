import 'package:flutter/material.dart';
class practics extends StatefulWidget {
  const practics({super.key});

  @override
  State<practics> createState() => _practicsState();
}

class _practicsState extends State<practics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Image.asset('registration.JPG'))

    );
  }
}
