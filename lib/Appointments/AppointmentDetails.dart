import 'package:calne_heatlh_care1/Settings/Settings.dart';
import 'package:calne_heatlh_care1/Appointments/VideoConsult1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appointment_Details extends StatefulWidget {
  const Appointment_Details({Key? key}) : super(key: key);

  @override
  State<Appointment_Details> createState() => _Appointment_DetailsState();
}

class _Appointment_DetailsState extends State<Appointment_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
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
                          context);
                      },
                      iconSize: 24,
                    ),
                  ),
                  const Text(
                    "Appointments",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 30,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
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
                height: 130,
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
                                  image: AssetImage('assets/doc3.svg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  CupertinoIcons.videocam_fill,
                                  color: Colors.green,
                                ),
                              )),

                          const SizedBox(width: 10),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(builder: (context) => My_Profile(),
                                        //     ));
                                      },
                                      child: Text(
                                        "Dr. Beckett Calger",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.blue,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Divider(
                                  color: Colors.grey.withOpacity(0.2),
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cardiologists",
                                    style:
                                        TextStyle(fontSize: 12, color: Color(0xff606060)),
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Venus Hospital",
                                    style:
                                        TextStyle(fontSize: 12, color: Color(0xff606060)),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Scheduled Appointment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Sat, September 17, 2022",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff606060).withOpacity(0.7)),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("11:00 Am - 11:30 AM (30 minutes)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff606060).withOpacity(0.7)),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Patient Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Full Name     :   James Andrew",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff606060).withOpacity(0.7)),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Mobile No.   :   +923123456789   ",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff606060).withOpacity(0.7)),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Email            :   james_andrew@gmail.com",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff606060).withOpacity(0.7)),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0,left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Your Package",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
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
              height: 100,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffD9E2F4),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                          onPressed: (){},
                            icon: Icon(CupertinoIcons.videocam_fill,color: Colors.blue,),
                            iconSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text("Video Consultation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),
                        SizedBox(height: 8,),
                        Text("Video Consult with doctor",style: TextStyle(fontSize: 12,color: Color(0xff606060)),),

                      ],
                    ),
                  ),
                  Expanded(child:Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("\$249",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),)),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("(Paid)",style: TextStyle(fontSize: 12,color: Color(0xff606060)),)),

                      ],
                    ),),
                  )],
              ),)

            ),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(right : 10,left: 10,bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff246BFD),Color(0xff262BC6)],
                      end: Alignment.topLeft,
                      begin: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoConsult1()),
                      );
                    },
                    //
                    child: Text(
                      'Video Consult (Start at 11:00 AM)',
                      style: TextStyle(
                          color: Colors.white,fontSize: 13
                      ),
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
