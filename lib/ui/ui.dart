import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/style.dart';

class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  int _currentindex=0;

  Widget buildProfileimage()=> CircleAvatar(
    backgroundColor: Colors.grey.shade500,
    backgroundImage: NetworkImage("https://st5.depositphotos.com/72897924/62370/v/1600/depositphotos_623706200-stock-illustration-male-profile-picture-man-face.jpg"),

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_rounded),label: "Record",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.save),label: "Save",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting",backgroundColor: Colors.blueGrey),

          ],
          onTap: (index){
            setState(() {
              _currentindex= index;
            });
          },


        ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Stack(
              children: [
                ScreenBackground(context),
                Column(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 15,),
                              child: Text("Hello! Abid",style: Head1Text(colorWhite),),
                            ),

                            buildProfileimage(),

                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Let enjoy your notes",style: Head6Text(colorLight),),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            shadowColor: colorGreen,
                            color: Colors.tealAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Welcome to TickTick Task",style: Head2Text(colorWhite),),

                                    Text("Your one-stop task management,Simplify,\n track and accomplished tasks with easy",style: Head6Text(colorWhite),),

                                    SizedBox(height: 4,),
                                    ElevatedButton(onPressed: (){}, child: Text("Watch Videos"),style: buttonStyle(),)

                                  ],
                                ),
                            ),

                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Reminder Task",style: TextStyle(color: colorWhite,fontSize: 16),),
                            Text("See all",style: TextStyle(color: colorLight,),),
                          ],
                        ),
                      ),
                      SizedBox(height: 3),

                      Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 130.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 160.0,
                              child: Center(child: Text("Online Class Routine")),

                              decoration: CardDecoratin(),
                            ),
                            SizedBox(width: 2,),
                            Container(
                              width: 160.0,
                              child: Center(child: Text("Offline Work List")),
                              decoration: CardDecoratin(),
                            ),
                            SizedBox(width: 2,),
                            Container(
                              width: 160.0,
                              child: Center(child: Text("Day Task")),
                              decoration: CardDecoratin(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All Task",style: TextStyle(color: colorDarkBlue,fontSize: 16),),
                            Text("See all",style: TextStyle(color: colorLightGray,),),
                          ],
                        ),
                      ),
                      SizedBox(height: 3,),
                       Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: CardviewDecoratin(),
                              child: Center(child: Text('Online Routine')),
                            ),
                            SizedBox(height: 2,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: CardviewDecoratin(),
                              child: Center(child: Text('Online Routine')),
                            ),
                            SizedBox(height: 2,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: CardviewDecoratin(),
                              child: Center(child: Text('Online Routine')),
                            ),
                          ],
                        ),




                    ]
                )

              ],

            ),
        ),
      ),



    );
  }
}
