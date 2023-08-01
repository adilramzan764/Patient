import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Appointment & Payments/Category_Details.dart';

class BookAppoitments extends StatefulWidget {
  const BookAppoitments({Key? key}) : super(key: key);

  @override
  State<BookAppoitments> createState() => _BookAppoitmentsState();
}

class _BookAppoitmentsState extends State<BookAppoitments> {
  List<String> titles = [
    "Covid",
    "Stomach Pain",
    "Headache",
    "Sinusitis",
    "Vertigo",
    "Cold & Cough",
    "Fever",
    "Constipation",
  ];
  List<String> categoryNames = [
    "Covid",
    "Digestive Issues",
    "Skin & Hair",
    "General Physician",
    "Bones & Joints",
    "Dental Care",
    "Mental Wellness",
    "Ear, Nose, Throat",
    "Women’s Health",
    "Sexual Health",
    "Homeopathy",
    "Child Specialist",
    "Lungs & Breath..",
    "Kidney Issues",
    "Diabetes Manag..",
    "General Surgery",
    "Ayurveda",
    "Cancer",
    "Veterinary",
    "Urinary Issues",
    "Diet & Nutrition"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.topCenter,
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
                      "Book Appointment",
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffF6F7FA),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintText: 'Search Symptoms / Specialities',
                    hintStyle:
                    TextStyle(fontSize: 15, color: Color(0xffA3A3A3)),
                    border: InputBorder.none,
                    prefixIcon: Container(
                      child: Transform.scale(
                        scale: 0.6, // Adjust the scale factor as needed
                        child: SvgPicture.asset("assets/search.svg"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Most common symptoms",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Number of columns
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 0.0,
                ),
                itemCount: titles.length, // Total number of items in the grid
                // padding: EdgeInsets.symmetric(horizontal: 15.0),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // color: Colors.black,

                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD9E2F4),
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Add your button action here
                            },
                            icon: SvgPicture.asset(
                              "assets/i${index + 1}.svg",
                              color: Colors.blue,
                              height:  40,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          titles[index],textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xff000000), fontSize: 12,),
                        ),

                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              child: GestureDetector(
                onTap: (){
                  CustomBottomDialog.show(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD9E2F4),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Skin & Hair",
                                style: TextStyle(
                                  color: Color(0xff246BFD),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Find doctors for issues like acne, hairfall, and other skin & hair concerns.',
                                style: TextStyle(
                                  color: Color(0xff5F5F5F),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          // width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/c1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9E2F4),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Women’s Health",
                              style: TextStyle(
                                color: Color(0xff246BFD),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Find doctors for women;s gynaecological issues like PCOS, Cysts and more.',
                              style: TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/c2.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9E2F4),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chronic Problems",
                              style: TextStyle(
                                color: Color(0xff246BFD),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Find doctors who treat diabetes, asthama and other chronic problems',
                              style: TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/c3.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9E2F4),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bone & Joint",
                              style: TextStyle(
                                color: Color(0xff246BFD),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Find doctors who treat fractures , body aches and other bone & joint issues.',
                              style: TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/c4.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9E2F4),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sexual Health",
                              style: TextStyle(
                                color: Color(0xff246BFD),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Find doctors who can solve your sexual and genital problems.',
                              style: TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/c5.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "All Specialities",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s1.svg",
            //                       // color: Colors.blue,
            //                       height: 60,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Covid",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s2.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "Digestive Issues",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s3.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Skin & Hair",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s4.svg",
            //                       // color: Colors.blue,
            //                       height: 40,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "General Physician",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                height: 1000,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 20.0,
                    // crossAxisSpacing: 0.0,

                    childAspectRatio: 300/300,
                  ),
                  itemCount: categoryNames.length,
                  // padding: EdgeInsets.symmetric(horizontal: 8.0),

                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      // color: Colors.black,
                      // height: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffD9E2F4),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Add your button action here
                              },
                              icon: SvgPicture.asset(
                                "assets/s${index + 1}.svg",
                                height: 40,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            categoryNames[index],textAlign: TextAlign.center, // Replace with your own category name logic
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 11,fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0,),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s5.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Bones & Joints",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s6.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Dental Care",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s7.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "Mental Wellness",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s8.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height:5),
            //                 Text(
            //                   "Ear, Nose, Throat",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0,),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s9.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "Women’s Health",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s10.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Sexual Health",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s11.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Homeopathy",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s12.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "Child Specialist",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0,),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s13.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Eye Specialist",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s14.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Brain & Nerves",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s15.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Physiotherapist",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s16.svg",
            //                       // color: Colors.blue,
            //                       height: 40,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Heart",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0,),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s17.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "Lungs & Breathing",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s18.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Kidney Issues",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s19.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Diabetes Management",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 130,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s20.svg",
            //                       // color: Colors.blue,
            //                       height: 40,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "General Surgery",textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0,),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s21.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Ayurveda",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s22.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Cancer",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s23.svg",
            //                       // color: Colors.blue,
            //                       height: 50,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Veterinary",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // SizedBox(
            //         //   width: 20,
            //         // ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 120,
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height: 70,
            //                   width: 70,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Color(0xffD9E2F4),
            //                   ),
            //                   child: IconButton(
            //                     onPressed: () {
            //                       // Add your button action here
            //                     },
            //                     icon: SvgPicture.asset(
            //                       "assets/s24.svg",
            //                       // color: Colors.blue,
            //                       height: 40,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(height: 10),
            //                 Text(
            //                   "Urinary Issues",
            //                   style: TextStyle(
            //                       color: Color(0xff000000), fontSize: 14),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: SizedBox(
            //       height: 120,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             height: 70,
            //             width: 70,
            //             decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: Color(0xffD9E2F4),
            //             ),
            //             child: IconButton(
            //               onPressed: () {
            //                 // Add your button action here
            //               },
            //               icon: SvgPicture.asset(
            //                 "assets/s25.svg",
            //                 // color: Colors.blue,
            //                 height: 50,
            //               ),
            //             ),
            //           ),
            //           SizedBox(height: 10),
            //           Text(
            //             "Diet & Nutrition",textAlign: TextAlign.center,
            //             style: TextStyle(
            //                 color: Color(0xff000000), fontSize: 14),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),)
          ]),
        ));
  }
}
