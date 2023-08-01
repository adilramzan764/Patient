import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Stomach_Pain.dart';
import 'Category_Details.dart';

class Book_Appointment extends StatefulWidget {
  const Book_Appointment({Key? key}) : super(key: key);

  @override
  State<Book_Appointment> createState() => _Book_AppointmentState();
}

class _Book_AppointmentState extends State<Book_Appointment> {


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
                        scale: 0.6, // Adjust the scale factor as neededs
                        child: SvgPicture.asset("assets/search-2-line.svg")
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/i1.svg",
                      "Covid"
                  ),
                  CustomRowItem(
                    "assets/i2.svg",
                    "Stomach Pain",
                  ),
                  CustomRowItem(
                    "assets/i3.svg",
                    "Headache",
                  ),
                  CustomRowItem(
                    "assets/i4.svg",
                    "Constipation",
                  ),
                ],
              ),
            ),
            // SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                     "assets/i5.svg",
                     "Veritgo"
                  ),
                  CustomRowItem(
                     "assets/i6.svg",
                    "Cold & Cough",
                  ),
                  CustomRowItem(
                     "assets/i7.svg",
                     "Fever",
                  ),
                  CustomRowItem(
                     "assets/i8.svg",
                     "Constipation",
                  ),
                ],
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
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 15),
              child: GestureDetector(
                onTap: () {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/s1.svg",
                      "Covid"
                  ),
                  CustomRowItem(
                    "assets/s2.svg",
                    "Digestive Issues",
                  ),
                  CustomRowItem(
                    "assets/s3.svg",
                    "Skin & Hair",
                  ),
                  CustomRowItem(
                    "assets/s4.svg",
                    "General Physician",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/s5.svg",
                      "Bones & Joints"
                  ),
                  CustomRowItem(
                    "assets/s6.svg",
                    "Dental Care",
                  ),
                  CustomRowItem(
                    "assets/s7.svg",
                    "Mental Wellness",
                  ),
                  CustomRowItem(
                    "assets/s8.svg",
                    "Ear ,Nose, Throat",
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/s9.svg",
                      "Women’s Health"
                  ),
                  CustomRowItem(
                    "assets/s10.svg",
                    "Sexual Health",
                  ),
                  CustomRowItem(
                    "assets/s11.svg",
                    "Homeopathy",
                  ),
                  CustomRowItem(
                    "assets/s12.svg",
                    "Child Specialist",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/s13.svg",
                      "Eye Specialist"
                  ),
                  CustomRowItem(
                    "assets/s14.svg",
                    "Brain & Nerves",
                  ),
                  CustomRowItem(
                    "assets/s15.svg",
                    "physioth..",
                  ),
                  CustomRowItem(
                    "assets/s16.svg",
                      "Heart",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/s17.svg",
                      "Lungs\n& Breathing"
                  ),
                  CustomRowItem(
                    "assets/s18.svg",
                    "Kidney Issues",
                  ),
                  CustomRowItem(
                    "assets/s19.svg",
                    "Diabetes Management",
                  ),
                  CustomRowItem(
                    "assets/s20.svg",
                    "General Surgery",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRowItem(
                      "assets/s21.svg",
                      "Ayurveda"
                  ),
                  CustomRowItem(
                    "assets/s22.svg",
                    "Cancer",
                  ),
                  CustomRowItem(
                    "assets/s23.svg",
                    "Veterinary",
                  ),
                  CustomRowItem(
                    "assets/s24.svg",
                    "Urinary Issues",
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 120,
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
                            "assets/s25.svg",

                            height: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Diet\n& Nutrition",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),)
          ]),
        ));
  }
  Widget CustomRowItem( String imagePath, String text,) {

    return Expanded(
      child: SizedBox(
        height: 120,
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
                  if(text=='Stomach Pain')
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StomachPain())
                    );
                },
                icon: SvgPicture.asset(
                  imagePath,

                  height: 40,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

