import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/ABC.dart';
import 'package:flutter_project/Sage_clone_app/LoginPage.dart';
class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),() {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Loginpage()),
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Text(
            "Indeed",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,


            ),

          ),
        ),
      ),
    );
  }
}
