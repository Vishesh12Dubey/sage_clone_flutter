import 'package:flutter/material.dart';
class Studentinfo extends StatefulWidget {
  const Studentinfo({super.key});

  @override
  State<Studentinfo> createState() => _StudentinfoState();
}

class _StudentinfoState extends State<Studentinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('studentinfo.JPG',fit: BoxFit.fill,),
    );
  }
}
