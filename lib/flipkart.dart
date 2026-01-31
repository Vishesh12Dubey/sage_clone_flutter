
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Cancel.dart';
import 'package:flutter_project/Home.dart';

class flipkart extends StatefulWidget {

  @override
  State<flipkart> createState() => _flipkartState();
}

class _flipkartState extends State<flipkart> {
  double active = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flipkart", style: TextStyle(fontSize: 40, color: Colors.blue),),
        backgroundColor: Colors.blueGrey.shade50,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade50,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Vishesh Dubey"),
              accountEmail: Text("vishesh666@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("V"),

              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade600
              ),


            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Ligin"),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.propane),
              title: Text("Propane"),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle_sharp),
              title: Text("Account"),
              trailing: Icon(Icons.arrow_forward_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],

        ),
      ),

      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 150,

                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Container(

                            color: Colors.white,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      color: Colors.grey,
                                      child: Column(
                                        children: [
                                          Image.network( 
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcFSF_R5AdVTUMGBBzGnRcSTciaiAmKqOOQ&s",
                                            height: 80,),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('Phones'),
                                          ),

                                        ],

                                      ),
                                    ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://4.imimg.com/data4/GY/AW/MY-13753452/school-uniforms-500x500.jpg",
                                          height: 80,),

                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("Cloths"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOGpjLP9sAzw3vDeUmhx7CQZxJAn1wUmxLhw&s",
                                          height: 80,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Electronics"),
                                        )
                                      ],
                                    ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://t3.ftcdn.net/jpg/05/28/57/64/360_F_528576447_j08koWfGyhXMweJzDz6qzx6yYBBKJSnM.jpg",
                                          height: 80,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Home"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://www.shutterstock.com/image-photo/airplane-isolated-on-white-background-260nw-695529475.jpg",
                                          height: 80,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Flight Book"),
                                        )
                                      ],
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Image.network(""),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 200,

                    child: Stack(
                      children: [

                        Container(
                          color: Colors.white,
                          child: CarouselSlider(items: [
                            // ClipRRect()
                            Container(
                              color: Colors.white,
                              width: double.infinity,
                              child: Image.network(
                                "https://robbreport.com/wp-content/uploads/2024/08/temerario01.jpg?w=800",
                                fit: BoxFit.fill,),


                            ),
                            Container(
                              color: Colors.white,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOhmREtCugQfmgP4SmCmzF-X0IDS7lfkwVQQ&s"),
                            ),
                            Container(
                              color: Colors.white,
                              child: Image.network(
                                  "https://ichef.bbci.co.uk/images/ic/480xn/p07h3dgm.jpg"),
                            ),
                            Container(
                              color: Colors.white,
                              child: Image.network(
                                  "https://onlysportsglobal.com/cdn/shop/files/Screenshot2023-05-29at11.32.05AM.png?v=1685385206"),
                            ),


                          ], options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            // 0.1 - 1.0
                            autoPlayInterval: Duration(seconds: 3),
                            initialPage: 0,
                            // reverse: true
                            onPageChanged: (value,_ ){
                              setState(() {
                                active = value.toDouble();
                              });
                            }
                          )),
                        ),
                        Positioned(
                          bottom: 15,
                          left: MediaQuery.of(context).size.width/2.3,
                          child:  DotsIndicator(dotsCount: 4,
                            decorator: DotsDecorator(
                                color: Colors.black,
                                activeColor: Colors.red,
                                activeSize: Size(20, 20),
                                // size: Size(20,20),
                                spacing: EdgeInsets.all(20)
                            ),

                            position: active,
                          ) ,

                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2Hb69HxJba3GVrzatWTrJhtSMeTmR_x01bw&s",
                                height: 100,),
                            ),
                            Text("Best Selling Sarees "),
                            Text("Under 499")
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNPTNNBTec5h5uoK-uI9mhyX1pfISks3dT2w&s",
                                height: 100,),
                              Text("Best Badminton Racquet"),
                              Text("Under 1999")
                            ],
                          ),

                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.network(
                                "https://www.nihalfashions.com/media/catalog/product/cache/caa15edf98145413286703527de7b8dd/b/e/beige-banarasi-jaquard-sherwani-for-men-nmk-4952.jpg",
                                height: 100,),
                            ),
                            Text("Sherwani"),
                            Text("under 5999")
                          ],
                        ),

                      ],
                    ),

                  ),
                )

              ],
            ),
          ),


        ),


      ),

      bottomNavigationBar: BottomNavigationBar(items: [


        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp), label: "Account"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.face), label: "Face")
      ],
          selectedItemColor: Colors.red,
          backgroundColor: Colors.grey,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          onTap: (value) {}


      ),


    );
  }
}
