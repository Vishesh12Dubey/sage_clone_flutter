// import 'package:flutter/material.dart';
// class Cancel extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue,
//
//       appBar: AppBar(
//         backgroundColor: Colors.greenAccent,
//         title: Text("Search"),
//         centerTitle: true,
//       ),
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Cancel extends StatefulWidget {
  const Cancel({super.key});

  @override
  State<Cancel> createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child:CarouselSlider(items: [
        ClipRRect(
      // borderRadius: ,
        child: Container(
          color: Colors.yellow,
        ),
    ),
        Container(
          color: Colors.greenAccent,
        ),
        Container(
          color: Colors.red,
        ),


      ], options: CarouselOptions(

        height: 200,

        autoPlay: true
      )),
    );
  }
}
