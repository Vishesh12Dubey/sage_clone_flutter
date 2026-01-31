// import 'package:flutter/material.dart';
//
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text("My First App"),
//       centerTitle: true,
//         actions: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Icon(Icons.add_a_photo),
//       ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(Icons.account_box),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Container(),
//             Container(),
//             Container(),
//           ],
//         ),
//       ),
//
//     );
//   }
//
//
// }

import 'package:flutter/material.dart';
import 'package:flutter_project/ABC.dart';
import 'package:flutter_project/Add.dart';
import 'package:flutter_project/Alert.dart';
import 'package:flutter_project/Cancel.dart';
import 'package:flutter_project/Sage_clone_app/Contact.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Payment.dart';
class Homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show ALL Product"),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("VISHESH DUBEY") ,
                accountEmail: Text("vishesh666@.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("V"),
            ),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
               Navigator.pop(context);
               Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));

              },
            ),
            Divider(),


            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('contact'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contact(),));

              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.cancel),
              title: Text('Cancel'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cancel(),));

              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.add_alert),
              title: Text('Alert'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Alert(),));

              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.abc),
              title: Text('ABC'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ABC(),));

              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add'),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Add(),));

              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width/3,
              child: Container(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Text("Application for your home page",style: TextStyle(fontSize:20,color: Colors.white ),
                    ),

                    SizedBox(height: 10,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network('https://rukminim2.flixcart.com/image/850/1000/xif0q/watch/d/n/r/1-resistance-luminous-taostry-boys-girls-original-imah62t5dkhrqtet.jpeg?q=90&crop=false',width: 80,height: 80,),
                        Image.network('https://rukminim2.flixcart.com/image/850/1000/xif0q/watch/d/n/r/1-resistance-luminous-taostry-boys-girls-original-imah62t5dkhrqtet.jpeg?q=90&crop=false',width: 80,height: 80,)],
                    ),
                    SizedBox(height: 20,),

                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network("https://m.media-amazon.com/images/I/719MMlTWkOL.jpg",width: 90,height: 80,),
                            Image.network("https://m.media-amazon.com/images/I/719MMlTWkOL.jpg",width: 90,height: 80,),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

              ),
              

            ),
            SizedBox(width: 10,),
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width/3,
              child: Container(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Text("Application for your first page",style: TextStyle(fontSize:20,color: Colors.white)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Image.network('https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg',width: 80,height: 80,),
                        Image.network('https://m.media-amazon.com/images/I/61hzuoXwjqL.jpg',width: 80,height: 80,),

                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Image.network('https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg',width: 80,height: 80,),
                            Image.network('https://m.media-amazon.com/images/I/61hzuoXwjqL.jpg',width: 80,height: 80,)

                          ],
                        ),
                      ],
                    ),

                  ],
                ),

              ),

            ),
            SizedBox(width: 10,),
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width/3,
              child: Container(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Row(

                      children: [

                        Text("Application for your home page",style: TextStyle(fontSize:20,color: Colors.white)),
                      ],
                    ),
                  ],
                ),

              ),

            ),
            SizedBox(width: 10,),
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width/3,
              child: Container(
                color: Colors.grey,

              ),

            ),
          ],
        ),
      ),

    );
  }
}