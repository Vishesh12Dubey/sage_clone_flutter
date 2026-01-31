import 'package:flutter/material.dart';
class Ragistrationpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("Ragistration Page"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_a_photo),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_box),
          ),

        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle,size: 50,),
        ),
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Container(
            width: 900,
            height: 900,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 80,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('logo.JPG'),
                ),
        
                Image.asset('logo.JPG',width: 100,height: 100,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
        
                    decoration: InputDecoration(
                      hint: Text("Enter Full Name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
        
                    decoration: InputDecoration(
                        hint: Text("Enter User Name"),
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(10)
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)
                           
                          )
        
                        )
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
        
                    decoration: InputDecoration(
                        hint: Text("Enter Email "),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                             
        
                        )
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hint: Text("Enter Phone No"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
        
                        )
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hint: Text("Enter Password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
        
                        )
                  ),
                ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hint: Text(" Confirm Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
        
                      )
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){}, child: Text("Ragister")),
              ),
                ElevatedButton(onPressed: (){}, child: Text("Cancle"))
              ],
            ),
          ),
        
        ),
      ) ,
    );
  }
}
