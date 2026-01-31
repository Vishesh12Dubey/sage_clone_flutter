import 'package:flutter/material.dart';
class Contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Contact"),
        centerTitle: true,
      ),
    );
  }
}