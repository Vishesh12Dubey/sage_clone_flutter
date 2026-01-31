//
// import 'package:flutter/material.dart';
// import 'package:flutter_project/ABC.dart';
// class SageApp extends StatefulWidget {
//   const SageApp({super.key});
//
//   @override
//   State<SageApp> createState() => _SageAppState();
// }
//
// class _SageAppState extends State<SageApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dashboard",style: TextStyle(fontSize: 30,color: Colors.white),),
//         backgroundColor: Colors.red,
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Center(
//           child: Stack(
//             children: [
//               Center(
//                 child: Container(
//                           width:400,
//                           height: 400,
//                           child: Column(
//                 children: [
//                   Image.network("https://media.istockphoto.com/id/1193039142/vector/sign-up-icon-isolated-on-white-background-vector-illustration.jpg?s=612x612&w=0&k=20&c=wk4fcec72ODMyW292XmSJg3PqPAmW9-BtdWta91UhUU="),
//                   Text("Assignment",)
//                 ],
//                           ),
//
//                         ),
//               ),
//           Container(
//             width: 200,
//             height: 200,
//             child: Column(
//               children: [
//                 Image.network("https://www.shutterstock.com/image-vector/money-cash-trendy-flat-style-600nw-674379685.jpg"),
//                 Text("Fee")
//               ],
//             ),
//           ),
//           Container(
//             width: 200,
//             height: 200,
//             child: Column(
//               children: [
//                 Image.network("https://static.vecteezy.com/system/resources/previews/022/661/424/non_2x/exam-icon-with-black-design-isolated-on-white-background-vector.jpg"),
//                 Text("Exam")
//               ],
//             ),
//           ),
//               Container(
//                 width: 200,
//                 height: 200,
//                 child: Column(
//                   children: [
//                     Image.network("https://static.vecteezy.com/system/resources/previews/036/437/096/non_2x/illustration-of-book-vector.jpg"),
//                     Text("Library")
//
//
//                   ],
//                 ),
//               ),
//               Container(
//                   width: 200,
//                   height: 200,
//                   child: Column(
//                       children: [
//                       Image.network("https://thumbs.dreamstime.com/b/yellow-school-bus-cartoon-illustration-379179242.jpg"),
//                   Text("Transportation")
//
//                       ],
//                   ),
//               ),
//             ],
//
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_project/ABC.dart';
class SageApp extends StatefulWidget {
  const SageApp({super.key});

  @override
  State<SageApp> createState() => _SageAppState();
}

class _SageAppState extends State<SageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",style: TextStyle(fontSize: 30,color: Colors.white),),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            Container(
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Image.asset('Ragis.JPG'),
                  // Text("Assignment",)
                ],
              ),

            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Image.asset('Assignm.JPG'),
                  // Text("Fee")
                ],
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Image.asset('Exam.JPG'),

                  Text("Exam")
                ],
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Image.asset('Libra.JPG'),
                  Text("Library")


                ],
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Image.asset('Bus.JPG'),
                  Text("Transportation")

                ],
              ),
            ),
          ],

        ),
      ),
      // body: Container(
      //   child: ,
      // ),

    );
  }
}