import 'package:calne_heatlh_care1/Appointment%20&%20Payments/My_Bookings.dart';
import 'package:calne_heatlh_care1/Settings/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Appointments.dart';

class Completed_Details extends StatefulWidget {
  const Completed_Details({Key? key}) : super(key: key);

  @override
  State<Completed_Details> createState() => _Completed_DetailsState();
}

class _Completed_DetailsState extends State<Completed_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 60,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 30,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context
                    );
                  },
                  iconSize: 24,
                ),
              ),
              const Text(
                "Details",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
                width: 30,

              ),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,

                  blurRadius: 3.5,
                )
              ],
            ),
            height: 170,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Expanded(
                      //   flex: 1,
                      //   child: SizedBox(
                      //     height: 100.0,
                      //     child: ClipRRect(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       child: Image.asset(
                      //         'assets/doc.jpeg',
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/doc3.svg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              CupertinoIcons.videocam_fill,
                              color: Colors.green,
                            ),
                          )

                      ),

                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => My_Profile(),
                                  //     ));
                                },
                                child: Text(
                                  'Dr. Beckett Calger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 20,),
                            Row(

                              children: [
                                Text('Video Consult', style: TextStyle(
                                    fontSize: 13, color: Colors.black87),),
                                SizedBox(width: 15,),
                                Container(
                                  height: 29,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff31B802),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: TextButton(
                                    onPressed: () {

                                    },
                                    child: Text(
                                      'Completed',
                                      style: TextStyle(
                                        color: Color(0xff31B802),
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                            SizedBox(height: 15,),

                            Row(
                              children: [

                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Sep 17, 2022",
                                      style: TextStyle(fontSize: 12,
                                          color: Color(0xff3D3D3D),
                                          fontWeight: FontWeight.w500),)),
                                SizedBox(width: 20,),
                                Text("11:00 AM", style: TextStyle(fontSize: 12,
                                    color: Color(0xff3D3D3D),
                                    fontWeight: FontWeight.w500),),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("30 minutes of video consultation", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                      fontSize: 13), textAlign: TextAlign.center,),
                  // SizedBox(height: 15,),
                ],
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Medicine / Prescription", style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),)),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 140.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF3F3F3),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF545454).withOpacity(0.3),
                  // spreadRadius: 2,
                  blurRadius: 3,
                  // offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('NEUROBION FORTE TABLET 30\'S, SHELCAL 500MG TABLET 15\'S FOR HEALTH, SUPRADYN DAILY TABLET 15\'S FOR HEALTH',style: TextStyle(fontSize: 16,color: Color(0xff303030)),),
            )
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,

                    blurRadius: 3.5,
                  )
                ],),
              child: Column(
                children: [

                Expanded(
                  flex: 3,
                  child: Container(
                  // height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),),
                  child: ClipRRect(

                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),

                    child: Image.asset(
                      'assets/m_r2.svg', fit: BoxFit.cover,
                    ),
                  ),
              ),
                ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                    Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Save Prescription", style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff246BFD),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => My_Bookings(), // Replace MyNewScreen with your desired screen widget
                                //   ),
                                // );
                              },
                              icon: SvgPicture.asset("assets/download.svg",color: Colors.white,height: 50,width: 50,),
                              iconSize: 50,
                            ),
                          ),
                        ),
                      ),),
                  )
          ],
        ),),
              )
      ],
    ),
    ),),
            SizedBox(height: 15,)
    ],
    ),
    ),
    );
  }
}
