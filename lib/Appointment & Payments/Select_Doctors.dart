import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_InClinic_Appointment.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_VideoConsult.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Doctor_Details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Select_Doctors extends StatefulWidget {
  const Select_Doctors({Key? key}) : super(key: key);

  @override
  State<Select_Doctors> createState() => _Select_DoctorsState();
}

class _Select_DoctorsState extends State<Select_Doctors> {



  final List<String> docnames = [
    'Dr. Travis Westaby',
    'Dr. Nathaniel Valle',
    'Dr. Beckett Calger',
    'Dr. Bernard Blis',
  ];
  final List<String> designations = [
    'Cardiologists',
    'Cardiologists',
    'Cardiologists',
    'Cardiologists',
  ];
  final List<String> docpics = [
    'assets/doc3.svg',
    'assets/doc2.svg',
    'assets/doc.svg',
    'assets/doc4.svg',
  ];
  final List<String> hospnames = [
    'Alka Hospital',
    'B&B Hospital',
    'Venus Hospital',
    'The Valley Hospital',
  ];

  bool _isPressed = false;

  void _togglePressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
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
                    ),
                    const Text(
                      "Select Doctors",
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 30,
                    )
                  ],
                )),
            // SizedBox(
            //   height: 20,
            // ),

            Expanded(
                child: ListView.builder(
                  itemCount: docnames.length,
                  // Replace yourData with the actual data list length
                  itemBuilder: (BuildContext context, int index) {
                    // Create a Card for each item in the list
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => Doctor_Details(), // Replace MyNewScreen with your desired screen widget
                        ),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
                          height: 195,
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
                                            image: AssetImage(docpics[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: docnames[index] == 'Dr. Travis Westaby'
                                            || docnames[index] == 'Dr. Beckett Calger'
                                            ? Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            CupertinoIcons.videocam_fill,
                                            color: Colors.green,
                                          ),
                                        )
                                            : SizedBox(),
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
                                                  docnames[index],
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
                                              if(docnames[index] == 'Dr. Nathaniel Valle' )
                                                Icon(
                                                  Icons.favorite_border_outlined,
                                                  color:  Colors.black ,
                                                  size: 24.0,
                                                ),

                                              if(docnames[index] == 'Dr. Travis Westaby' || docnames[index] == 'Dr. Beckett Calger' || docnames[index] == 'Dr. Bernard Blis'   )
                                              Icon(
                                                Icons.favorite,
                                                color: Colors.blue ,
                                                size: 24.0,
                                              ),


                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Divider(color: Colors.grey.withOpacity(0.2),thickness: 1,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(designations[index],style: TextStyle(fontSize: 12,color: Colors.grey),),
                                              Container(width: 1,height: 10,color: Colors.black,),
                                              Text(hospnames[index],style: TextStyle(fontSize: 12,color: Colors.grey),),

                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Align(alignment: Alignment.centerLeft,
                                              child: Text("10 years experience overall",style: TextStyle(fontSize: 11,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)),
                                          SizedBox(height: 10,),
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
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    if (docnames[index] == 'Dr. Travis Westaby' ||
                                        docnames[index] == 'Dr. Beckett Calger')
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Color(0xff31B802),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Book_VideoConsult()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff31B802),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.videocam_fill,
                                                  color: Colors.white,
                                                  size: 21,
                                                ),
                                                SizedBox(width: 2),
                                                Text(
                                                  'Book Video Consult',
                                                  style: TextStyle(color: Colors.white, fontSize: 11),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ),
                                    // if (docnames[index] != 'Dr. Travis Westaby' &&
                                    //     docnames[index] != 'Dr. Beckett Calger')
                                    SizedBox(width: 5,),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [Color(0xff246BFD), Color(0xff262BC6)],
                                              end: Alignment.topLeft,
                                              begin: Alignment.bottomRight,
                                            ),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => In_clinic_Appointment()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              onPrimary: Colors.transparent,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/hospital-fill.svg',
                                                  color: Colors.white,
                                                  // height: 21,
                                                  // width: 21,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  'Book Clinic Visit',
                                                  style: TextStyle(color: Colors.white, fontSize: 11),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );

                  },
                ))
          ],
        ),
      )
    );
  }
}
