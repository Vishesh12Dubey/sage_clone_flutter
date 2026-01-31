import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/Sage_clone_app/SageApp.dart';
import 'package:lottie/lottie.dart';
class ABC extends StatefulWidget {

  @override
  State<ABC> createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SageApp()),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(90.0),
                child: Container(
                  color: Colors.red,
                width:300,
                height: 300,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt43zl0WsvI3H_kFsJheikS9wodb8XWEW8uA&s",)

                ),
              ),

              Lottie.asset('Ani.json')
            ],

          ),

        ),
      ),

    );
  }
}