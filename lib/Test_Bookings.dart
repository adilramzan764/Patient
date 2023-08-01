
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'MainScreen.dart';
import 'Test_Bookiings1.dart';

class TestBookings extends StatefulWidget {
  const TestBookings({Key? key}) : super(key: key);

  @override
  State<TestBookings> createState() => _TestBookingsState();
}

class _TestBookingsState extends State<TestBookings> {
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
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox()
            ],
          ),
        ),
        Transform.translate(
            offset: Offset(20, 0),
            child: SvgPicture.asset(
              'assets/No Results@3x.svg',
            )),
        Transform.translate(
          offset: Offset(0, -120),
          child: Column(
            children: [
              Text('You haven’t booked any tests yet ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text(
                'Get started with your first health checkup',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(160, 50),
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestBookings1()));
                  },
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue),
                  )),
            ],
          ),
        ),
      ]),
    ));
  }
}
