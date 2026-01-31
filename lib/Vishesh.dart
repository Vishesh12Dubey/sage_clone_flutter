import 'package:flutter/material.dart';
class Vishesh extends StatefulWidget {
  const Vishesh({super.key});

  @override
  State<Vishesh> createState() => _VisheshState();
}

class _VisheshState extends State<Vishesh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("AppBar"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/035/158/342/small_2x/loop-background-neon-retro-wave-80s-style-video.jpg",fit: BoxFit.fill,),


          ),
          Center(
            child: Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white12,
            ),
          ),
          // Container(
          //   width: 200,
          //   height: 200,
          //   color: Colors.grey,
          // )


        ],
      ),
    );
  }
}
