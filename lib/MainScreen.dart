
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_Appointment.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Doctor_Details.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/My_Bookings.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Select_Doctors.dart';
import 'package:calne_heatlh_care1/BabyCare.dart';
import 'package:calne_heatlh_care1/HayderPharmacy.dart';
import 'package:calne_heatlh_care1/Orders.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Drawer_Profile.dart';
import 'MedicalRecord1.dart';
import 'Pharmacy.dart';
import 'Profile_Page.dart';
import 'Test_Bookiings1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false;

  int currentSlideIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),


      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            ListTile(
              leading: Image.asset('assets/iryna-makarchuk-MDt3FQMgvVo-unsplash 1.png'),
              // Icon or any widget to display on the left side
              title: Text('Hello James'),
              // Title text
              subtitle: Text(
                'How are you feeling today?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Subtitle text
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/ICONS.svg'), // Existing notification icon
                  SizedBox(width: 3), // Add some space between icons
                  IconButton(
                    icon: Icon(Icons.more_vert,color: Colors.black,), // Example of another icon button
                    onPressed: () {
                      openDrawer();
                    },
                  ),


                ],
              ),


            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/Group (1).svg'),
                  Text(
                    'Hafizabad',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.white)],
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blue, width: 1.5),
                ),
                height: 50,
                child: TextFormField(
                  onTap: () {
                    setState(() {
                      isTextField1Selected =
                          true; // Set the selection state of other text fields to false
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1.5, color: Colors.blue),
                    ),
                    fillColor:
                        isTextField1Selected ? Colors.blue : Colors.white,
                    filled: true,
                    hintText: 'Search doctor, medicine and more....',
                    hintStyle: TextStyle(fontSize: 16),
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Transform.scale(
                      scale: 0.6,
                      child: SvgPicture.asset('assets/search-2-line.svg'),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/filter-line.svg'),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 3.5,
                viewportFraction: 1.0,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    print(index);
                    currentSlideIndex = index; // Convert index to double
                  });
                },
              ),
              items: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book_Appointment()
                        )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFF262BC6),
                      image: DecorationImage(
                        image: AssetImage('assets/1 6.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        children: [
                          Transform.translate(
                            offset: Offset(-60, 0),
                            child: Text(
                              'Early Protection For',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Transform.translate(
                            offset: Offset(-95, 0),
                            child: Text(
                              'Family Health',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                  MediaQuery.of(context).size.width * 0.5,
                                  40,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Book_Appointment()
                                    )
                                );
                              },
                              child: Text(
                                'Make Appointment',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Transform.translate(
                            offset: Offset(-20, 0),
                            child: DotsIndicator(
                              position:
                                  double.parse(currentSlideIndex.toString()),
                              dotsCount: 3,
                              // Replace with the total number of dots

                              // Replace with the current position of the active dot (starts from 0)
                              decorator: DotsDecorator(
                                activeColor: Colors.white,
                                // Replace with your desired color for active dot
                                activeSize: Size(9, 9),
                                // Replace with your desired size of active dot
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0)), // Replace with your desired shape of active dot
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book_Appointment()
                        )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('assets/1 6.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        children: [
                          Transform.translate(
                            offset: Offset(-60, 0),
                            child: Text(
                              'Early Protection For',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Transform.translate(
                            offset: Offset(-95, 0),
                            child: Text(
                              'Family Health',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                  MediaQuery.of(context).size.width * 0.5,
                                  40,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Book_Appointment()
                                    )
                                );
                              },
                              child: Text(
                                'Make Appointment',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Transform.translate(
                            offset: Offset(-20, 0),
                            child: DotsIndicator(
                              position:
                                  double.parse(currentSlideIndex.toString()),
                              dotsCount: 3,
                              // Replace with the total number of dots

                              // Replace with the current position of the active dot (starts from 0)
                              decorator: DotsDecorator(
                                activeColor: Colors.white,
                                // Replace with your desired color for active dot
                                activeSize: Size(9, 9),
                                // Replace with your desired size of active dot
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0)), // Replace with your desired shape of active dot
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book_Appointment()
                        )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      image: DecorationImage(
                        image: AssetImage('assets/1 6.png'),
                        alignment: Alignment.centerRight,
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        children: [
                          Transform.translate(
                            offset: Offset(-60, 0),
                            child: Text(
                              'Early Protection For',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Transform.translate(
                            offset: Offset(-95, 0),
                            child: Text(
                              'Family Health',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                  MediaQuery.of(context).size.width * 0.5,
                                  40,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Book_Appointment()
                                    )
                                );
                              },
                              child: Text(
                                'Make Appointment',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Transform.translate(
                            offset: Offset(-20, 0),
                            child: DotsIndicator(
                              position:
                                  double.parse(currentSlideIndex.toString()),
                              dotsCount: 3,
                              // Replace with the total number of dots

                              // Replace with the current position of the active dot (starts from 0)
                              decorator: DotsDecorator(
                                activeColor: Colors.white,
                                // Replace with your desired color for active dot
                                activeSize: Size(9, 9),
                                // Replace with your desired size of active dot
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0)), // Replace with your desired shape of active dot
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => My_Bookings()
                        )
                    );
                  },
                  child: Image.asset(
                    'assets/istockphoto-468613710-612x612 1.png',
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TestBookings1()
                          )
                      );
                    },
                    child: Image.asset('assets/ani-kolleshi-7jjnJ-QA9fY-unsplash.png')),
                Image.asset('assets/visuals-ufK-deiLqY8-unsplash.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => My_Bookings()
                        )
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 2.5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Book'),
                      Text('Appoinment')
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TestBookings1()
                        )
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 2.5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Lab Testing'),
                    ]),
                  ),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Book Video'),
                    Text('Appoinment')
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                    'assets/christina-victoria-craft-ZHys6xN7sUE-unsplash.png'),
                Image.asset('assets/daniel-schludi-mAGZNECMcUg-unsplash.png'),
                Image.asset(
                    'assets/national-cancer-institute-701-FJcjLAQ-unsplash.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Book'),
                    Text('Appoinment')
                  ]),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Lab Testing'),
                  ]),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Book Video'),
                    Text('Appoinment')
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Doctor's Specialities",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Find doctors according to your needs'),
                  Transform.translate(
                      offset: Offset(0, -10),
                      child: InkWell(
                          onTap: () {

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Book_Appointment()
                                  )
                              );

                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color(0XFF246BFD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Select_Doctors()
                        )
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/dentist-svgrepo-com 1.svg',
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Select_Doctors()
                        )
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/radiology-svgrepo-com 1.svg',
                  ),
                ),
                SvgPicture.asset(
                  'assets/Vector (1).svg',
                ),
                SvgPicture.asset(
                  'assets/overweight-svgrepo-com 1.svg',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Select_Doctors()
                          )
                      );
                    },
                    child: Text('Dentist', style: TextStyle(color: Color(0xff77787A)))),
                Transform.translate(
                  offset: Offset(10, 0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Select_Doctors()
                          )
                      );
                    },
                    child: Text('  Radialogy',
                        style: TextStyle(color: Color(0xff77787A))),
                  ),
                ),
                Transform.translate(
                  offset: Offset(15, 0),
                  child: Text('Neurology',
                      style: TextStyle(color: Color(0xff77787A))),
                ),
                Transform.translate(
                  offset: Offset(10, 0),
                  child: Text(' Overweight',
                      style: TextStyle(color: Color(0xff77787A))),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/thermometer-svgrepo-com 1.svg',
                ),
                SvgPicture.asset(
                  'assets/brain-svgrepo-com (1) 1.svg',
                ),
                SvgPicture.asset(
                  'assets/Joints Bone.svg',
                ),
                SvgPicture.asset(
                  'assets/Oncology.svg',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Fever', style: TextStyle(color: Color(0xff77787A))),
                Transform.translate(
                  offset: Offset(10, 0),
                  child: Text('  Psychiatry',
                      style: TextStyle(color: Color(0xff77787A))),
                ),
                Transform.translate(
                  offset: Offset(15, 0),
                  child: Text('0rthopedist',
                      style: TextStyle(color: Color(0xff77787A))),
                ),
                Transform.translate(
                  offset: Offset(10, 0),
                  child: Text(' HIV Aids',
                      style: TextStyle(color: Color(0xff77787A))),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HayderPharmacy()
                    )
                );
              },
              child: Container(
                height: 340,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0XFF262BC6)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Column(children: [
                      Row(
                        children: [
                          Text('Spotlight',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          Image.asset(
                            'assets/Group.png',
                            width: 30,
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Explore amazing Deals, Offers & Promos ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'times new roman',
                              fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Transform.translate(
                          offset: Offset(-15, 0),
                          child: CarouselSlider(
                              options: CarouselOptions(
                                height: MediaQuery.of(context).size.height / 4,
                                viewportFraction: 1.0,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    print(index);
                                    currentSlideIndex =
                                        index; // Convert index to double
                                  });
                                },
                              ),
                              items: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffE4EDF2)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children:  [
                                                    Text('Fast HeaithCare',
                                                        style: TextStyle(
                                                            color: Colors.blue)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Reliable on time home dilivery',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                        'Our in-house pharmacists ensure your medicines reach you when',
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                    Text(
                                                      'you need them.,',
                                                      style:
                                                          TextStyle(fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height: 170,
                                                  width: 150,
                                                  child: Transform.translate(
                                                    offset: Offset(-30, 25),
                                                    child: Image.asset(
                                                      'assets/Banner 1 1.png',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffE4EDF2)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Fast HeaithCar',
                                                        style: TextStyle(
                                                            color: Colors.blue)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Reliable on time home dilivery',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                        'Our in-house pharmacists ensure your medicines reach you when',
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                    Text(
                                                      'you need them.',
                                                      style:
                                                          TextStyle(fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height: 170,
                                                  width: 150,
                                                  child: Transform.translate(
                                                    offset: Offset(-30, 25),
                                                    child: Image.asset(
                                                      'assets/Banner 1 1.png',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffE4EDF2)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Fast HeaithCare',
                                                        style: TextStyle(
                                                            color: Colors.blue)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Reliable on time home dilivery',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                        'Our in-house pharmacists ensure your medicines reach you when',
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                    Text(
                                                      'you need them.',
                                                      style:
                                                          TextStyle(fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 170,
                                                width: 150,
                                                child: Transform.translate(
                                                    offset: Offset(-30, 25),
                                                    child: Image.asset(
                                                      'assets/Banner 1 1.png',
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-50, 5),
                        child: DotsIndicator(
                          position: double.parse(currentSlideIndex.toString()),
                          dotsCount: 3,
                          // Replace with the total number of dots

                          // Replace with the current position of the active dot (starts from 0)
                          decorator: DotsDecorator(
                            activeColor: Colors.white,
                            // Replace with your desired color for active dot
                            activeSize: Size(9, 9),
                            // Replace with your desired size of active dot
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5.0)), // Replace with your desired shape of active dot
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Find doctors available near you",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Find best doctors near you to help you',
                      style: TextStyle(fontSize: 11)),
                  Transform.translate(
                      offset: Offset(10, -10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Select_Doctors()
                                )
                            );
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color(0XFF246BFD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Doctor_Details()
                    )
                );
              },
                leading: Image.asset(
                  'assets/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD 1.png',
                ),
                title: Transform.translate(
                    offset: Offset(10, 0),
                    child: Text('Dr. Robert Fox',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18))),
                subtitle: Column(
                  children: [
                    Text('Internal Medicine at Standford Hospitial',
                        style:
                            TextStyle(color: Color(0xff77787A), fontSize: 11)),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Transform.scale(scale: 0.8,
                            child: Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            text: '5.0',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: '(398 Reviews)',
                                style: TextStyle(
                                  color: Color(0xff77787A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                trailing: Image.asset(
                    'assets/stock-photo-happy-male-doctor-stethoscope-neck 1.png')),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Doctor_Details()
                    )
                );
              },
                leading: Image.asset(
                  'assets/istockphoto-468613710-612x612 2.png',
                ),
                title: Transform.translate(
                    offset: Offset(10, 0),
                    child: Text('Dr. Leslie Alaxander',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18))),
                subtitle: Column(
                  children: [
                    Text('Cardialogist at Siloam Hospital              ',
                        style: TextStyle(
                          color: Color(0xff77787A),
                          fontSize: 11,
                        )),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Transform.scale(scale: 0.8,
                            child: Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            text: '5.0',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: '(9123 Reviews)',
                                style: TextStyle(
                                  color: Color(0xff77787A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                trailing: Image.asset(
                    'assets/rian-ramirez-rm7rZYdl3rY-unsplash 1.png')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Health Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Buy health products and get delivered within 24hrs',
                      style: TextStyle(fontSize: 11)),
                  Transform.translate(
                      offset: Offset(10, -10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Pharmacy()
                                )
                            );
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color(0XFF246BFD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/Frame 4.png'),
                Image.asset('assets/Frame 4 (1).png'),
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BabyCare()
                          )
                      );
                    },
                    child: Image.asset('assets/Frame 4 (2).png')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Transform.translate(
                  offset: Offset(-11, 0),
                  child: Text(
                    'Covid Essentials',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-15, 0),
                  child: Text(
                    'Skin Care',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BabyCare()
                          )
                      );
                    },
                    child: Text(
                      'Baby Care',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/Frame 4 (3).png'),
                Image.asset('assets/Frame 3.png'),
                Image.asset('assets/Frame 4 (4).png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Transform.translate(
                  offset: Offset(-11, 0),
                  child: Text(
                    '      Device &\n   Instruments',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-15, 0),
                  child: Text(
                    '  Diabedes Care',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: Text(
                    ' Pain Relief',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestBookings1()
                    )
                );
              },
              child: Container(
                height: 340,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0XFF262BC6)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Column(children: [
                      Text('Test & Health Checkups                   ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '  Get your tests & health checkups done on the go ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'times new roman',
                              fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CarouselSlider(
                            options: CarouselOptions(
                              height: MediaQuery.of(context).size.height / 4,
                              viewportFraction: 1.0,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  print(index);
                                  currentSlideIndex =
                                      index; // Convert index to double
                                });
                              },
                            ),
                            items: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFE4C8)),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 20,
                                      ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    physics: NeverScrollableScrollPhysics(),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 200,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children:  [
                                                  Text('Covid-19 RTPCR test',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Reports within 24 hours',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(height: 2,),
                                                  Text(
                                                      'Home sample collection',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  SizedBox(height: 5,),
                                                  Text(
                                                    'Only at \$19',
                                                    style:
                                                        TextStyle(fontSize: 12,color: Colors.black,fontWeight:
                                                        FontWeight.bold,),
                                                  ),
                                               SizedBox(height: 10,),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: TextButton(
                                                      style: ElevatedButton.styleFrom( backgroundColor: Colors.blue,
                                                        fixedSize: Size(
                                                          MediaQuery.of(context).size.width/4,
                                                          20,
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          side: BorderSide(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Learn More',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                                height: 170,
                                                width: 150,
                                                child: Transform.translate(
                                                  offset: Offset(-35, 25),
                                                  child: Image.asset(
                                                    'assets/Screenshot 2022-08-03 at 10.50 (1).png',fit: BoxFit.fill,

                                                  ),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFE4C8)),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 20,
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    physics: NeverScrollableScrollPhysics(),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 200,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children:  [
                                                  Text('Covid-19 RTPCR test',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Reports within 24 hours',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(height: 2,),
                                                  Text(
                                                      'Home sample collection',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  SizedBox(height: 5,),
                                                  Text(
                                                    'Only at \$19',
                                                    style:
                                                    TextStyle(fontSize: 12,color: Colors.black,fontWeight:
                                                    FontWeight.bold,),
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: TextButton(
                                                      style: ElevatedButton.styleFrom( backgroundColor: Colors.blue,
                                                        fixedSize: Size(
                                                          MediaQuery.of(context).size.width/4,
                                                          20,
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          side: BorderSide(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Learn More',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                                height: 170,
                                                width: 150,
                                                child: Transform.translate(
                                                  offset: Offset(-35, 25),
                                                  child: Image.asset(
                                                    'assets/Screenshot 2022-08-03 at 10.50 (1).png',fit: BoxFit.fill,

                                                  ),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFE4C8)),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 20,
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    physics: NeverScrollableScrollPhysics(),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 200,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children:  [
                                                  Text('Covid-19 RTPCR test',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Reports within 24 hours',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(height: 2,),
                                                  Text(
                                                      'Home sample collection',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  SizedBox(height: 5,),
                                                  Text(
                                                    'Only at \$19',
                                                    style:
                                                    TextStyle(fontSize: 12,color: Colors.black,fontWeight:
                                                    FontWeight.bold,),
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: TextButton(
                                                      style: ElevatedButton.styleFrom( backgroundColor: Colors.blue,
                                                        fixedSize: Size(
                                                          MediaQuery.of(context).size.width/4,
                                                          20,
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          side: BorderSide(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Learn More',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                                height: 170,
                                                width: 150,
                                                child: Transform.translate(
                                                  offset: Offset(-35, 25),
                                                  child: Image.asset(
                                                    'assets/Screenshot 2022-08-03 at 10.50 (1).png',fit: BoxFit.fill,

                                                  ),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Transform.translate(
                        offset: Offset(-30, 5),
                        child: DotsIndicator(
                          position: double.parse(currentSlideIndex.toString()),
                          dotsCount: 3,
                          // Replace with the total number of dots

                          // Replace with the current position of the active dot (starts from 0)
                          decorator: DotsDecorator(
                            activeColor: Colors.white,
                            // Replace with your desired color for active dot
                            activeSize: Size(9, 9),
                            // Replace with your desired size of active dot
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5.0)), // Replace with your desired shape of active dot
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Top Hospitals That are Open and Safe",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(' Find best hospitial near you to fulfill your medical needs.',
                      style: TextStyle(fontSize: 10)),
                  Transform.translate(
                      offset: Offset(10, -10),
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color(0XFF246BFD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
                leading: Image.asset(
                  'assets/Screenshot 2022-08-03 at 10.27 1.png',
                ),
                title: Transform.translate(
                    offset: Offset(10, 0),
                    child: Text('USA Health University Hospitals',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14))),
                subtitle: Column(
                  children: [SizedBox(height: 1,),
                    Text('  2451 University Hospital Dr, Mobile, AL',
                        style: TextStyle(
                          color: Color(0xff77787A),
                          fontSize: 12,
                        )),
                    SizedBox(height: 1,),
                    Text('36617, United States                              ',
                        style: TextStyle(
                          color: Color(0xff77787A),
                          fontSize: 12,
                        )),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Transform.scale(scale: 0.6,
                            child: Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Transform.translate(offset: Offset(-13,0),
                          child: RichText(
                            text: TextSpan(
                              text: '5.0',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: '  (9123 Reviews)',
                                  style: TextStyle(
                                    color: Color(0xff77787A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                trailing: Image.asset(
                    'assets/Screenshot 2022-08-03 at 10.42 1.png')),
            SizedBox(
              height: 20,
            ),
            ListTile(
                leading: Image.asset(
                  'assets/Screenshot 2022-08-03 at 10.38 1.png',
                ),
                title: Transform.translate(
                    offset: Offset(10, 0),
                    child: Text('University of Michigan Hospital',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14))),
                subtitle: Column(
                  children: [SizedBox(height: 1,),
                    Text(' 1500 E Medical Center Dr, Ann Arbor,',
                        style: TextStyle(
                          color: Color(0xff77787A),
                          fontSize: 12,
                        )),
                    SizedBox(height: 1,),
                    Text('MI 48109, United States                    ',
                        style: TextStyle(
                          color: Color(0xff77787A),
                          fontSize: 12,
                        )),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Transform.scale(scale: 0.6,
                            child: Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Transform.translate(offset: Offset(-13,0),
                          child: RichText(
                            text: TextSpan(
                              text: '5.0',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: '  (9123 Reviews)',
                                  style: TextStyle(
                                    color: Color(0xff77787A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                trailing: Image.asset(
                    'assets/Screenshot 2022-08-03 at 10.27 1 (1).png')),
          ],
        ),
      ),

    );
  }
}
