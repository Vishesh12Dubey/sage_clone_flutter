import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/Sage_clone_app/Calender.dart';
import 'package:flutter_project/Sage_clone_app/LoginPage.dart';
import 'package:flutter_project/Sage_clone_app/Sage.dart';
class Sagesplach extends StatefulWidget {
  const Sagesplach({super.key});

  @override

  State<Sagesplach> createState() => _SagesplachState();
}

class _SagesplachState extends State<Sagesplach> {
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 1),(){

      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Calender()));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Calender()),
      );


        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Sage()),

        );
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()),
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
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/3/3b/SAGE_University_Bhopal.jpg'),
          ),
        )
      )
    );
  }
}
