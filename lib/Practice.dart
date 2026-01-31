import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/ABC.dart';
import 'package:flutter_project/Add.dart';
import 'package:flutter_project/Cancel.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Payment.dart';

import 'Alert.dart';
import 'Sage_clone_app/Contact.dart';
class Practice extends StatefulWidget {
  const Practice({super.key});


  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  int selected=0;
  List screens=[Payment(),Cancel(),ABC()];
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color:Colors.pinkAccent,
    //   child: CarouselSlider(items: [], options: CarouselOptions()),
    // );
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        backgroundColor:Colors.purple.shade300,
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
      body: screens[selected],
      bottomNavigationBar:BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person")
      ],
      selectedItemColor: Colors.white,
      backgroundColor:Colors.grey ,
        unselectedItemColor: Colors.blueAccent,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: selected,
        onTap: (value)
        {
        setState(() {
          selected=value;
        });
        }

      ) ,
    );
  }
}
