import 'package:flutter/material.dart';
import 'package:flutter_project/Sage_clone_app/main.dart';
class Amazonn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "AMAZON",
          style: TextStyle(fontSize:40 ),

        ),

        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('lin.JPG',width: 100,height: 100,),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('ama.JPG',width: 100,height: 100,),
        ),

      ),
      body: SingleChildScrollView(
        child: Center(
          child:Container(
           width: 800,
            height: 800,
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('ac.JPG',width: 200,height: 200,),

                                Text(
                                     "AIR CONDITIONAR",
                                      style: TextStyle(fontSize: 20),
                                    ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('lcd.JPG',width: 200,height: 200,),

                              Text(
                              "SAMSUNG",
                              style: TextStyle(fontSize: 20),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('cooler.JPG',width: 200,height: 200,),

                                 Text(
                                 "COOLER",
                               style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('fridge.JPG',width: 200,height: 200,),

                              Text(
                              "FRIDGE",
                              style: TextStyle(fontSize: 20),
                              ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ],

            ),

          ) ,

        ),
      ),


    );
  }
}



// import 'package:flutter/material.dart';
// class Bigpage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("appwar"),
//         backgroundColor: Colors.grey,
//       ),
//       body: SingleChildScrollView(
//         scrollDirection:Axis.horizontal ,
//         child: Center(
//           child: Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(
//                   height: 200,
//                   width: MediaQuery.of(context).size.width/2,
//                   child: Container(
//                     color: Colors.grey,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
