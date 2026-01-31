import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(title: Text("App Bar"),
      backgroundColor:Colors.grey,
      centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_alarm),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_alert),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_a_photo_outlined),
          )

        ],
        leading: Icon(Icons.account_circle,size: 60,),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1200,
            height: 1500,
            color: Colors.white54,

            child: Column(
              children: [
                Text(
                  "पूजा के लिए संपर्क करें",
                  style: TextStyle(fontSize: 40,color:Colors.green),


                ),

                Text(
                    "जय श्री महाकाल",
                  style: TextStyle(fontSize: 40,color: Colors.red),

                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('law.JPG'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(200.0),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('lin.JPG'),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(120.0),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('law.JPG'),
                          ),
                        ),
                      ],
                    ),

                Text(
                    "Contact No. 6263174110 ",
                  style: TextStyle(fontSize: 30,color: Colors.black),

                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            Image.asset('man.JPG',width: 200,height: 200,),
                            Text(
                              "RAM",
                              style: TextStyle(fontSize: 20,color: Colors.black),

                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            Image.asset('wan.JPG',width: 200,height: 200,),
                            Text(
                              "SHYAM",
                              style: TextStyle(fontSize: 20,color:Colors.black),

                            )

                          ],
                        ),
                      ),
            ]
                ),
               Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Image.asset('logo.JPG',width: 200,height: 200,),
                              Text(
                                  "RADHA",
                                style: TextStyle(fontSize: 20,color: Colors.black),

                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Image.asset('lan.JPG',width: 200,height: 200,),
                              Text(
                                  "SITA",
                                style: TextStyle(fontSize: 20,color: Colors.black),

                              )
                            ],
                          ),
                        ),
            ]
                        )
                      ],


                )
              ],

            )
            ),

          ),
      ),
      );

  }

}

