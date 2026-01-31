import 'package:flutter/material.dart';
class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hostel'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('hostel.JPG')),
    );
  }
}
