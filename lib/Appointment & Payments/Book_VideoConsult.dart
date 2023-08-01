import 'package:calne_heatlh_care1/Change_Appointment/Popup1.dart';
// import 'package:calne_heatlh_care1/Payment/Select_PaymentMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Payment/Select_PaymentMethod.dart';

class Book_VideoConsult extends StatefulWidget {
  const Book_VideoConsult({Key? key}) : super(key: key);

  @override
  State<Book_VideoConsult> createState() => _Book_VideoConsultState();
}

class _Book_VideoConsultState extends State<Book_VideoConsult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
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
                const Text(
                  "Book Video Consultation",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                  width: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              height: 140,
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
                            height: 100,
                            width: 110,
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
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => Payments(),
                                  //     ));
                                },
                                child: Text(
                                  'Dr. Travis Westby',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.2),
                                thickness: 1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Cardiologists",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "MBBS, MD - General Medicine",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Divider(
              thickness: 0.5,
              color: Color(0xff77787A),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Video Consultation time',
                style: TextStyle(fontSize: 14, color: Color(0xff77787A)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 7),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sat, 06 Aug 2022, 12:30 PM',
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff2564F7),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Divider(
              thickness: 0.5,
              color: Color(0xff77787A),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Bill Details',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff2564F7),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 7, right: 20),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Consultation Fee',
                    style: TextStyle(fontSize: 13, color: Color(0xff414141)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '\$200',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff2564F7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 7, right: 20),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Service Fee',
                    style: TextStyle(fontSize: 13, color: Color(0xff414141)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '&49',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff2564F7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Divider(
              thickness: 0.5,
              color: Color(0xff77787A),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 5, right: 20),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Total Payable',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '\$249',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff2564F7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Note: Cancellation charges applicable.',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: 'By booking the appointment, you agree to our ',
                  style: TextStyle(color: Color(0xff000000), fontSize: 13),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: TextStyle(color: Color(0xff2564F7), fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Color(0xffFFEDDC),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 4,),
                        Text(
                          'Appointment for ',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'James Andrew',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            Popup1.popup1(context);
                          },
                          child: Text(
                            'CHANGE',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff2564F7),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 4,),
                        Text(
                          'Bill \$ ',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$249',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff246BFD),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff31B802),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Select_PaymentMethod()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xff31B802),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Row(
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
