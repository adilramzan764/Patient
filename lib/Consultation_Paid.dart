import 'package:flutter/material.dart';

import 'Profile_Page.dart';

class MyTabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,
            title: Row(
              children: [Transform.translate(offset: Offset(-30,0),
                  child: Icon(Icons.arrow_back,color: Colors.black)),
                Text('   Consultations',style: TextStyle(color: Colors.black)),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Tab(

                 child:     TextButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff99BAFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),fixedSize: Size(130, 30)),
                          onPressed: () {

                          },
                          child: Text('Paid',style: TextStyle(color: Colors.white),)),

                ),
                Tab(

                  child:     TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff99BAFF),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),fixedSize: Size(130, 30)),
                      onPressed: () {

                      },
                      child: Text('Paid',style: TextStyle(color: Colors.white),)),

                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // Contents of the first tab
              Center(
                 child: Column(children: [SizedBox(height: 40,),
                   Image.asset('assets/Group 2682.png'),
                   SizedBox(height: 40,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                             fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                             backgroundColor: const Color(0XFF262BC6),
                             shape: const RoundedRectangleBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(10)))),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const Profile()
                               )
                           );
                         },
                         child: const Text(
                           'Continue',
                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                         )),
                   ),

                 ],)

              ),


              // Contents of the second tab
              Center(
                  child: Column(children: [SizedBox(height: 40,),
                    Image.asset('assets/Group 2682.png'),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                              backgroundColor: const Color(0XFF262BC6),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Profile()
                                )
                            );
                          },
                          child: const Text(
                            'CHECK',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                    ),

                  ],)

              ),
            ],
          ),
        ),
      ),
    );
  }
}
