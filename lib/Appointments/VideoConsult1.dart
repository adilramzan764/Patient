import 'dart:ui';

import 'package:calne_heatlh_care1/Appointments/VideoConsult2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoConsult1 extends StatefulWidget {
  const VideoConsult1({Key? key}) : super(key: key);

  @override
  State<VideoConsult1> createState() => _VideoConsult1State();
}

class _VideoConsult1State extends State<VideoConsult1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image with blur effect
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/doc3.svg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust blur intensity
              child: Container(
                color: Colors.black12 // Adjust overlay opacity
              ),
            ),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 60,left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 50,
                      width: 30,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),

                        iconSize: 24, onPressed: () { Navigator.pop(
                          context);},
                      ),
                    ),
                  )),
              
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/doc3.svg'),
                        fit: BoxFit.cover,
                      ),
                      // color: Color(0xffD9E2F4),
                    ),
                    // child: CircleAvatar(
                    //   // backgroundColor: Colors.transparent,
                    //   child: SvgPicture.asset('assets/doc.svg',fit: BoxFit.cover,),
                    // ),
                  ),
                  SizedBox(height: 15,),
                  Text("Dr. Beckett Calger",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                  SizedBox(height: 15,),
                  Text("Ringing...",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 13),)

                ],
              ),
              Padding(
                padding: const EdgeInsets.all( 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                    SizedBox(width: 12,),
                    Container(
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
                            icon: Icon(CupertinoIcons.mic_slash_fill,color: Colors.blue,),
                            iconSize: 26,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12,),
                    Container(
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
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => VideoConsult2()),
                              );
                            },
                            icon: Icon(Icons.call_end,color: Colors.red,),
                            iconSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

            ],
          )
        ],
      ),

    );
  }
}
