import 'package:flutter/material.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("HOME"),
        centerTitle: true,
      ),
      body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            ],
          ),
      ),
    );
  }
}