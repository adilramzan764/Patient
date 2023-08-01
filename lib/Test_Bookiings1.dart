
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Basic_Women_Health.dart';
import 'Test_Bookings.dart';

class TestBookings1 extends StatefulWidget {
  const TestBookings1({Key? key}) : super(key: key);

  @override
  State<TestBookings1> createState() => _TestBookings1State();
}

class _TestBookings1State extends State<TestBookings1> {
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false;
  int currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 60,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 24,
            ),
            Text(
              'Test Bookings',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xff262BC6)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              Column(children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/Group (1).svg',
                          color: Colors.white),
                      Text(
                        'Hafizabad',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Talk to our experts to book ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text('tests.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(180, 50),
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const TestBookings1()));
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/phone-line.svg',
                                    color: Colors.blue),
                                Text(
                                  '  Phone Call',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(180, 50),
                                backgroundColor: Colors.green,
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const TestBookings1()));
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/whatsapp-line.svg',
                                    color: Colors.white, height: 25),
                                Text(
                                  '  Whatsapp',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ]),
              Transform.translate(
                offset: Offset(-80, 40),
                child: Image.asset(
                  'assets/Full Vactor.png',
                  height: 180,
                  width: 180,
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/nathan-dumlao-Wr3comVZJxU-unsplash 1.png'),
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BasicWomenHealth()
                    )
                );
              },
              child: Image.asset('assets/nathan-dumlao-Wr3comVZJxU-unsplash 1 (2).png')),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.translate(
            offset: Offset(-10, 0),
            child: Text(
              'Vitamin Deficiency',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
          InkWell(onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BasicWomenHealth()
                )
            );
          },
            child: Text(
              "Basic Women's Health",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.translate(
            offset: Offset(-35, 0),
            child: Text(
              'Health Checkup',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
          Transform.translate(
            offset: Offset(-60, 0),
            child: InkWell(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BasicWomenHealth()
                  )
              );
            },
              child: Text(
                "Checkup",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
            ),
          )
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Transform.translate(
          offset: Offset(-30, 0),
          child: Text(
            'Includes 5 tests',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
        Transform.translate(
          offset: Offset(-30, 0),
          child: Text(
            "Includes 85 tests",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          ' Ideal for individuals aged 11',
          style: TextStyle(color: Colors.black, fontSize: 11),
        ),
        Transform.translate(
          offset: Offset(-3, 0),
          child: Text(
            "Ideal for individuals aged 15",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Transform.translate(
          offset: Offset(-43, 0),
          child: Text(
            'to 80 years',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
        Transform.translate(
          offset: Offset(-47, 0),
          child: Text(
            "to 40 years",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Transform.translate(
          offset: Offset(-23, 0),
          child: RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$899",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' (Upto 25% off)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-23, 0),
          child: RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$1499",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' (Upto 50% off)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/nathan-dumlao-Wr3comVZJxU-unsplash 1 (3).png'),
          Image.asset('assets/nathan-dumlao-Wr3comVZJxU-unsplash 1 (4).png'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Working Women’s Health',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
          ),
          Transform.translate(
            offset: Offset(-10, 0),
            child: Text(
              "Basic Women's Health",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.translate(
            offset: Offset(-46, 0),
            child: Text(
              'Checkup',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
          Transform.translate(
            offset: Offset(-48, 0),
            child: Text(
              "Checkup",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          )
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Transform.translate(
          offset: Offset(-28, 0),
          child: Text(
            'Includes 95 tests',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
        Transform.translate(
          offset: Offset(-30, 0),
          child: Text(
            "Includes 27 tests",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          ' Ideal for individuals aged 18',
          style: TextStyle(color: Colors.black, fontSize: 11),
        ),
        Transform.translate(
          offset: Offset(-1, 0),
          child: Text(
            "Ideal for individuals aged 05",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Transform.translate(
          offset: Offset(-43, 0),
          child: Text(
            'to 55 years',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
        Transform.translate(
          offset: Offset(-46, 0),
          child: Text(
            "to 15 years",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Transform.translate(
          offset: Offset(-23, 0),
          child: RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$1999",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' (Upto 30% off)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-29, 0),
          child: RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$499",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' (Upto 30% off)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      CarouselSlider(
          options: CarouselOptions(
            height: 20,
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
          items: []),
      DotsIndicator(
        position: double.parse(currentSlideIndex.toString()),
        dotsCount: 3,
        // Replace with the total number of dots

        // Replace with the current position of the active dot (starts from 0)
        decorator: DotsDecorator(
          activeColor: Colors.blue,
          // Replace with your desired color for active dot
          activeSize: Size(9, 9),
          // Replace with your desired size of active dot
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  5.0)), // Replace with your desired shape of active dot
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Divider(height: 1, color: Color(0xffDCDCDC), thickness: 6),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Fullfilled By Professional Labs',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/Group 303.svg'),
          SvgPicture.asset('assets/Group 304.svg'),
          SvgPicture.asset('assets/Group 305.svg'),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '120+',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            '99%',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            '4.7/5',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Best Techincians', style: TextStyle(color: Color(0xff77787A),fontSize: 12)),
          Text('On time Reports', style: TextStyle(color: Color(0xff77787A),fontSize: 12)),
          Text('Customer Ratings', style: TextStyle(color: Color(0xff77787A),fontSize: 12)),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Divider(height: 1, color: Color(0xffDCDCDC), thickness: 6),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Reliable and Trustworthy',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text("All packages are fulfilled by Certified diagnostic laboratories These labs have 1000's of outlets across World        ",
                style: TextStyle(color: Color(0XFF77787A), fontSize: 13)),
                 ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Extensive test coverage',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: [
          Text("With over 60 tests ranging from Iron Deficiency to Cardiac Risks, our Health Checkups are ideal for identifying health risk well in advance and taking preventive steps towards them.       ",
              style: TextStyle(color: Color(0XFF77787A), fontSize: 13)),

          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Simple and Convenient',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text("A qualified and certified phalebotomist will visit your home to collect the samples at the time specified by you. They carry Ice Boxes and Gel Packs to ensure that the samples are transported to the labs in a hygenic and secure manner",
                  style: TextStyle(color: Color(0XFF77787A), fontSize: 13)),
            ],
          ),
        ]),
      ),
      SizedBox(
        height: 20,
      ),
      Column(
        children: [
          Container(
            height:180,width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xffEDEFF3)),
            child: Transform.translate(offset: Offset(0,40),
              child: Column(children: [
                Text(
                  'Thousand of Happy Customers',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('“Good service for avoiding to stand in que'),
                Text('for health checkup”'),
                SizedBox(height: 10,),
              Text(
                  'Lalita Hegde',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),),
                CarouselSlider(
                    options: CarouselOptions(
                      height: 20,
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
                    items: []),
                DotsIndicator(
                  position: double.parse(currentSlideIndex.toString()),
                  dotsCount: 3,
                  // Replace with the total number of dots

                  // Replace with the current position of the active dot (starts from 0)
                  decorator: DotsDecorator(
                    activeColor: Colors.blue,
                    // Replace with your desired color for active dot
                    activeSize: Size(9, 9),
                    // Replace with your desired size of active dot
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0)), // Replace with your desired shape of active dot
                  ),
                ),

              ]),
            ),
          ),
        ],
      ),
              SizedBox(height: 20,),

    ]
            )
        )
    );
  }
}
