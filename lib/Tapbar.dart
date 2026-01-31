import 'package:flutter/material.dart';
import 'package:flutter_project/Add.dart';
import 'package:flutter_project/Alert.dart';
import 'package:flutter_project/HomePage.dart';
import 'package:flutter_project/Sage_clone_app/LoginPage.dart';
class Tapbar extends StatefulWidget {
  const Tapbar({super.key});

  @override
  State<Tapbar> createState() => _TapbarState();
}

class _TapbarState extends State<Tapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.grey,
          centerTitle: true,

          bottom: TabBar(tabs: [
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Call",)

          ],
            labelStyle: TextStyle(color: Colors.white),
            unselectedLabelStyle: TextStyle(color: Colors.white),
            indicatorColor:Colors.red ,
            indicatorSize: TabBarIndicatorSize.tab,

          )
        ),
        body: TabBarView(children: [
          Loginpage(),
          Homepage(),
          Alert()
        ]),
      ),
    );
  }
}
