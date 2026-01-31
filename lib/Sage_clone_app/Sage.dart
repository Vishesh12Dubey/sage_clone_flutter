import 'package:flutter/material.dart';
import 'package:flutter_project/Alert.dart';
import 'package:flutter_project/Sage_clone_app/Assignment.dart';
import 'package:flutter_project/Sage_clone_app/Attendance.dart';
import 'package:flutter_project/Back.dart';
import 'package:flutter_project/Sage_clone_app/Calender.dart';
import 'package:flutter_project/Sage_clone_app/Change_Password.dart';
import 'package:flutter_project/Sage_clone_app/Contact.dart';
import 'package:flutter_project/Sage_clone_app/Contact_information.dart';
import 'package:flutter_project/Sage_clone_app/Courseragis.dart';
import 'package:flutter_project/Sage_clone_app/Curriculum.dart';
import 'package:flutter_project/Sage_clone_app/Delete_Account.dart';
import 'package:flutter_project/Sage_clone_app/Exam.dart';
import 'package:flutter_project/Sage_clone_app/Grievance.dart';
import 'package:flutter_project/Sage_clone_app/Hostel.dart';
import 'package:flutter_project/Sage_clone_app/Library.dart';
import 'package:flutter_project/Sage_clone_app/Sage_Buzz.dart';
import 'package:flutter_project/Sage_clone_app/Saveattendance.dart';
import 'package:flutter_project/Sage_clone_app/Social_Media.dart';
import 'package:flutter_project/Sage_clone_app/Studentinfo.dart';
import 'package:flutter_project/Sage_clone_app/Time_Table.dart';
import 'package:flutter_project/Sage_clone_app/Tp.dart';
import 'package:flutter_project/Sage_clone_app/Transportation.dart';
class Sage extends StatefulWidget {
  const Sage({super.key});

  @override
  State<Sage> createState() => _SageState();
}

class _SageState extends State<Sage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade600,
          title: Text('Dashboard',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: 'DASHBOARD',),
            // Tab(text: 'Calender',)
          ],
          labelStyle: TextStyle(color: Colors.white),
          unselectedLabelColor: Colors.black,
          ),

          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.account_box),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.add_call),
          //   ),
          // ],

        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('VISHESH DUBEY'),
                accountEmail: Text('Class-B.Tech - CSE || Semester-D-240765'),
                decoration: BoxDecoration(
                color: Colors.red.shade400
              ),

            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.account_circle,size:60 ,),

            ),
            ),
              ListTile(
                leading: Icon(Icons.school ),
                title: Text('Student Info'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Studentinfo()),);
                },

              ),
              Divider(),
                ListTile(
                  leading: Icon(Icons.notifications ),
                  title: Text('Sage Buzz'),
                  trailing: Icon(Icons.arrow_forward_outlined),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SageBuzz()),);
                  },

                ),
              Divider(),
              ListTile(
                leading: Icon(Icons.warning ),
                title: Text('Grievance'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Grievance()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.schedule_sharp ),
                title: Text('Time Table'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TimeTable()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.feedback ),
                title: Text('Feedback'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Back()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share ),
                title: Text('Social Media'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SocialMedia()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.phone ),
                title: Text('Contact Info'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactInformation()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.password ),
                title: Text('Change Password '),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete_forever ),
                title: Text('Delete Account'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DeleteAccount()),);
                },

              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout ),
                title: Text('Logout'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: (){
                  Navigator.pop(context);
                },

              ),



            ],

          ),

        ),


        body:
        ListView(

          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Courseragis()),);
                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Image.network('https://png.pngtree.com/png-vector/20220617/ourmid/pngtree-registered-trademark-icon-abstract-black-png-image_5116290.png')

                          ),
                          Text('Registration'),
                        ],
                      ),

                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance()),);
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                  child: Image.network('https://png.pngtree.com/png-clipart/20230921/original/pngtree-ontime-attendance-icon-with-human-avatar-and-clock-vector-png-image_12719662.png')),
                              Text('Attendance Status'),
                            ],
                          ),
                        ),
                      ),

                    ],

                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exam()),);
                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/047/235/502/small_2x/3d-illustration-exam-png.png'),
                          ),
                          Text('Exam'),
                        ],
                      ),
                              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Curriculum()),);
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 150,
                            child: Image.network('https://thumbs.dreamstime.com/b/creative-global-education-logo-featuring-open-book-stylized-earth-suitable-schools-universities-learning-platforms-375959922.jpg')),
                        Text('Curriculum'),
                      ],
                    ),
                  ),
                              )
                              ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()),);
                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Image.network('https://png.pngtree.com/png-vector/20240515/ourmid/pngtree-open-book-logo-png-image_12467719.png'),
                          ),
                          Text('Library'),
                        ],
                      ),

                              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Hostel()),);
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 150,
                            child: Image.network('https://png.pngtree.com/element_pic/17/05/03/314a5d762ad70099243b695ae62230d6.jpg')),
                        Text('Hostel'),
                      ],
                    ),
                  ),
                              ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Transportation()),);
                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Image.network('https://www.shutterstock.com/image-vector/transparent-bus-icon-png-vector-600w-1971033653.jpg'),
                          ),
                          Text('Transportation'),
                        ],
                      ),
                              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Tp()),);

                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 150,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/46/46955.png')),
                        Text('T & P'),
                      ],
                    ),
                  ),
                              ),

                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Saveattendance()),);

                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyqf9NCpUpj8yf88ZxfQ-1-vMPQ10fPiVO8A&s'),
                          ),
                          Text('Save Attendance'),
                        ],
                      ),
                              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Assignment()),);

                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 150,
                            child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/053/106/262/small_2x/initial-alphabet-a-with-a-pencil-icon-logo-for-education-student-or-corporate-identity-free-vector.jpg')),
                        Text('Assignment'),
                      ],
                    ),
                  ),
                              ),

                    ],
                  ),
                ),
              ),
            ),


          ],

        ),

      ),
    );
  }
}
