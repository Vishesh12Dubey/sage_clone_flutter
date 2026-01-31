import 'package:flutter/material.dart';
import 'package:flutter_project/Sage_clone_app/Sage.dart';

class Loginpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Center(


        child: Container(

          width: 800,
          height: 800,
          color: Colors.grey.shade100,

          child: Column(


            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://pbs.twimg.com/profile_images/1133691149183381504/7dHaeI2w_400x400.png'),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Password",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sage()));
                }, child: Text("Login",style:TextStyle(fontSize: 20),)),
              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
