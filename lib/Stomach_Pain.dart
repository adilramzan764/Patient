
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Payment/Select_PaymentMethod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Consult_Now.dart';
import 'ForgetPassword.dart';
import 'MainScreen.dart';
import 'Pharmacy.dart';

class StomachPain extends StatefulWidget {
  const StomachPain({Key? key}) : super(key: key);

  @override
  State<StomachPain> createState() => _StomachPainState();
}

class _StomachPainState extends State<StomachPain> {
  bool _isFocused = false;
  bool _isChecked = false;
  int currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed:(){
                  Navigator.pop(context);
                },icon: Icon(Icons.arrow_back, size: 30, color: Colors.black)),
                Text(
                  'Stomach Pain',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50,width: 50,)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/Group 79.svg',
            ),
            title: Text('Consultations For Stomach Pain',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16)),
            subtitle: Text('Treated by a Gernal Physician',
                style: TextStyle(color: Color(0xff77787A), fontSize: 12)),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            color: Color(0xffEDEFF3),
            thickness: 6,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    "We will assign you a top doctop",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "From Below",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "View our doctors currently online",
                style: TextStyle(
                  color: Color(0xff77787A),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 5,
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 2.5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/image 7.png',
                        fit: BoxFit.cover,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              Text('Dr. Travis Westaby',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 30,
                              ),
                              Image.asset('assets/heart-3-line.png')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 1,
                            color: Color(0XFF606060),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Cardiologists',
                                style: TextStyle(color: Color(0XFF606060)),
                              ),
                              Container(
                                height: 12,
                                width: 1,
                                color: Colors.grey,
                              ),
                              Text(
                                'Alka Hospital',
                                style: TextStyle(color: Color(0XFF606060)),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: Offset(-8, 0),
                              child: Text(
                                '10 years experience overall',
                                style: TextStyle(color: Color(0XFF606060)),
                              )),
                          Transform.translate(
                            offset: Offset(-10, 0),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 1,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Transform.scale(
                                    scale: 0.6,
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
                                    text: '5.0    ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '(5376 Reviews)    ',
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 2.5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/istockphoto-468613710-612x612 1.png',
                        fit: BoxFit.cover,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              Text('Dr. Travis Westaby',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 30,
                              ),
                              Image.asset('assets/heart-3-line.png')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 1,
                            color: Color(0XFF606060),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Cardiologists',
                                style: TextStyle(color: Color(0XFF606060)),
                              ),
                              Container(
                                height: 12,
                                width: 1,
                                color: Colors.grey,
                              ),
                              Text(
                                'Alka Hospital',
                                style: TextStyle(color: Color(0XFF606060)),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: Offset(-8, 0),
                              child: Text(
                                '10 years experience overall',
                                style: TextStyle(color: Color(0XFF606060)),
                              )),
                          Transform.translate(
                            offset: Offset(-10, 0),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 1,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Transform.scale(
                                    scale: 0.6,
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
                                    text: '5.0    ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '(5376 Reviews)    ',
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            color: Color(0XFFEDEFF3),
            thickness: 6,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: _isChecked ? Colors.blue : Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor:
                          _isChecked ? Colors.blue : Colors.transparent,
                      child: _isChecked
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                  Transform.translate(
                      offset: Offset(-50, 0),
                      child: Text(
                        'Single Online Consultation',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                  Text(
                    '\$499',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 68, right: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chat, audio, video consultation & free 7 days',
                    style: TextStyle(fontSize: 11)),
                Text('\$499')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('follow-up', style: TextStyle(fontSize: 10))),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0XFF31B802),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
                 child: Center(child: Text('You will also get a FREE FOLLOW-UP FOR 7 DAYS with every consultation  ')),
               ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Transform.translate(offset: Offset(15,0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _isChecked ? Colors.blue : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor:
                        _isChecked ? Colors.blue : Colors.transparent,
                        child: _isChecked
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    ),
                  ),
                  Transform.translate(offset: Offset(-10,0),
                    child: Text(
                      'Cover 15 consultations/month across',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                  Text(
                    '\$1199',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 68, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('all specialities for 1 month',
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                Text('Per Month')
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68.0),
            child: Column(
              children: [
                Text('24/7 access to doctors, till your health conserns are resolved',style: TextStyle(fontSize: 10)),
                SizedBox(height: 10,),
                Text('Online consultations for entire family, across all 22 specialties',style: TextStyle(fontSize: 10)),
                SizedBox(height: 10,),
                Text('Experience clinic-like consultations via video call           ',style: TextStyle(fontSize: 10))
              ],
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Transform.translate(offset: Offset(15,0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _isChecked ? Colors.blue : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor:
                        _isChecked ? Colors.blue : Colors.transparent,
                        child: _isChecked
                            ? Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    ),
                  ),
                  Transform.translate(offset: Offset(-10,0),
                    child: Text(
                      'Cover 15 consultations/month across',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                  Text(
                    '\$1199',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 68, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('all specialities for 3 month',
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                Text('Per 3 Month')
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68.0),
            child: Column(
              children: [
                Text('24/7 access to doctors, till your health conserns are resolved',style: TextStyle(fontSize: 10)),
                SizedBox(height: 10,),
                Text('Online consultations for entire family, across all 22 specialties',style: TextStyle(fontSize: 10)),
                SizedBox(height: 10,),
                Text('Experience clinic-like consultations via video call           ',style: TextStyle(fontSize: 10))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffEDEFF3),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Center(child: Column(
                children: [SizedBox(height: 10,),
                  Text('Data & Privacy',style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 20,),
                  Text("The contents of your consultations are private and confidential. Practo's medical team may carry out routine anonymised audits to",style: TextStyle(fontSize: 10),),
                  Row(
                    children: [
                      Text
                        ('improve service quality. ',style: TextStyle(fontSize: 10),),
                      Text
                        ('Know more',style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text
                        ('By proceeding to avail a consultation, you agree to',style: TextStyle(fontSize: 10), ),
                      Text
                        ('Terms of use',style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ],
              )),
            ),
          ),
SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
        Text
      ('\$499'),
    ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(180, 50),
            backgroundColor: Color(0XFF262BC6),
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Select_PaymentMethod()));
        },
        child: const Text(
          'Pay & Consult',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              ),
        )),
  ],
),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Transform.translate(offset: Offset(0,-10),
                child: Text
                  ('Amount to Pay', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          SizedBox(height: 20,),

        ]),
      ),
    );
  }
}
