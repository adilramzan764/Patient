import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../MainScreen.dart';

class Review_Summary extends StatefulWidget {
  const Review_Summary({Key? key}) : super(key: key);

  @override
  State<Review_Summary> createState() => _Review_SummaryState();
}

class _Review_SummaryState extends State<Review_Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        Navigator.pop(context);
                      },
                      iconSize: 24,
                    ),
                  ),
                  const Text(
                    "Review Summary",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                    width: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),

                      blurRadius: 1,
                    )
                  ],
                ),
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 110,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/doc3.svg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child:Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  CupertinoIcons.videocam_fill,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(builder: (context) => Payments(),
                                        //     ));
                                      },
                                      child: Text(
                                        'Dr. Travis Westaby',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    // InkWell(
                                    //   onTap: _togglePressed,
                                    //   child:
                                    //   Icon(
                                    //     Icons.favorite,
                                    //     color: docnames[index] == 'Dr. Travis Westaby' ||
                                    //         docnames[index] == 'Dr. Beckett Calger' ? Colors.blue : Colors.black,
                                    //     size: 24.0,
                                    //   ),
                                    // ),

                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color:  Colors.black ,
                                        size: 24.0,
                                      ),




                                  ],
                                ),
                                SizedBox(height: 5,),
                                Divider(color: Colors.grey.withOpacity(0.2),thickness: 1,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Cardiologists',style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    Container(width: 1,height: 10,color: Colors.black,),
                                    Text('Alka Hospital',style: TextStyle(fontSize: 12,color: Colors.grey),),

                                  ],
                                ),
                                SizedBox(height: 15,),

                                Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                      Icon(
                                        Icons.star,
                                        color:  Colors.blue,
                                        size: 18.0,
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Text("5.0",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    SizedBox(width: 20,),
                                    Text("5.765 reviews",style: TextStyle(fontSize: 12,color: Colors.grey),),

                                  ],
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

            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),

                    blurRadius: 1,
                  )
                ],
              ),
              height: 110,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20,top: 15,right: 20),
                    child: Row(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                          child: Text('Date & Hour',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),


                        Expanded(
                          child: Align(alignment: Alignment.centerRight,
                            child: Text('Jul 26, 2022 | 10:30 AM',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.bold),),),
                        ),
                      ],
                    ),),
                  Padding(padding: EdgeInsets.only(left: 20,top: 10,right: 20),
                    child: Row(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                          child: Text('Service',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),


                        Expanded(
                          child: Align(alignment: Alignment.centerRight,
                            child: Text('In-Clinic Visit',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.bold),),),
                        ),
                      ],
                    ),),

                  Padding(padding: EdgeInsets.only(left: 20,top: 10,right: 20),
                    child: Row(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                          child: Text('Duration',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),


                        Expanded(
                          child: Align(alignment: Alignment.centerRight,
                            child: Text('30 minutes',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.bold),),),
                        ),
                      ],
                    ),),
                ],
              ),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),

                      blurRadius: 1,
                    )
                  ],
                ),
                height: 130,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20,top: 15,right: 20),
                      child: Row(
                        children: [
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Amount',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),


                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Text('\$200',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 10,right: 20),
                      child: Row(
                        children: [
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Service Fee',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),


                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Text('Free',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      ),),
                    
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Divider(thickness: 0.5,color: Colors.grey,),),

                    Padding(padding: EdgeInsets.only(left: 20,top: 10,right: 20),
                      child: Row(
                        children: [
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Total',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),


                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Text('\$200',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      ),),

                  ],
                ),
              ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15),
              child: ElevatedButton(
                onPressed: () {
                  // setState(() {
                  //   selectedMethodIndex = index;
                  // });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: SvgPicture.asset('assets/Visa.svg'),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '--- --- ---  7285',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text('Change', style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.bold)))
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                      return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(30)),
                          backgroundColor: Colors.white,
                          child: LayoutBuilder(builder:
                              (BuildContext context,
                              BoxConstraints constraints) {
                            return Container(
                              width: constraints.maxWidth * 0.8,
                              // Adjust the width as needed
                              height: constraints.maxHeight * 0.5,
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height:
                                            MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.2,
                                            width:
                                            MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.4,
                                            child: SvgPicture.asset(
                                              'assets/s_e.svg',
                                            )),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                                      child: Text("Congratulations!",style: TextStyle(fontSize: 16,color: Color(0xff246BFD),fontWeight: FontWeight.bold),),),
                                    Text("Appointment successfully ",style: TextStyle(fontSize: 12,color: Color(0xff77787A)),textAlign: TextAlign.center,),
                                    Text("booked. The doctor you selected",style: TextStyle(fontSize: 12,color: Color(0xff77787A)),textAlign: TextAlign.center),
                                    Text("will contact you soon",style: TextStyle(fontSize: 12,color: Color(0xff77787A)),textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                            );
                          }));
                    },).then((value) {
                      // This block is executed after the dialog is dismissed
                      // Navigate to the home screen
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                            (route) => false,
                      );
                    });

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Set background color to transparent
                    shadowColor: Colors.transparent, // Set shadow color to transparent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                    ),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff246BFD), Color(0xff262BC6)],
                        end: Alignment.topLeft,
                        begin: Alignment.bottomRight,
                      ),

                      borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('Pay', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold))),
                    ),
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
