import 'package:flutter/material.dart';
class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('feedback.JPG'),
    );
  }
}
