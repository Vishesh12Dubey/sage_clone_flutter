import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SITA RAM"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_a_photo),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_box),
          )
        ],
        leading: Icon(Icons.account_circle,size: 50,),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

}