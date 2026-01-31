import 'package:flutter/material.dart';
class Tp extends StatefulWidget {
  const Tp({super.key});

  @override
  State<Tp> createState() => _TpState();
}

class _TpState extends State<Tp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T & P'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('Tandg.JPG')),

    );
  }
}
