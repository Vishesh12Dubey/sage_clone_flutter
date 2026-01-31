import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Add extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(child: Lottie.asset('Ani.json'))


      // appBar: AppBar(
      //   backgroundColor: Colors.greenAccent,
      //   title: Text("Add"),
      //   centerTitle: true,
      // ),
    );
  }
}
